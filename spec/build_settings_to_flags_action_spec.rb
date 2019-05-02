describe Fastlane::Actions::BuildSettingsToFlagsAction do
  ActionHelper = Fastlane::Helper::XcconfigActionsHelper
  Xcspec = Fastlane::Helper::Xcspec

  describe '#run' do
    it 'handles empty build settings' do
      build_settings_to_flags_test(build_settings: {}) do |result|
        expect(result["compiler_flags"]).to be_empty
        expect(result["swift_compiler_flags"]).to be_empty
        expect(result["linker_flags"]).to be_empty
      end
    end

    context 'supports StringList build settings' do
      it 'maps string list build settings of CustomFlags category' do
        warning_flags = "-Werror=abc -Wabc -Wall -Wno-shit -Wthis=1"
        build_settings = {
          "WARNING_CFLAGS" => warning_flags
        }
        build_settings_to_flags_test(build_settings: build_settings) do |result|
          expect(result["compiler_flags"]).to eq(warning_flags)
          expect(result["swift_compiler_flags"]).to be_empty
          expect(result["linker_flags"]).to be_empty
        end
      end

      it 'maps StringList entries using CommandLineArgs option' do
        settings = {
          "SWIFT_ACTIVE_COMPILATION_CONDITIONS" => "c1 c2 c3",
          "OTHER_SWIFT_FLAGS" => "-o1 -o2 -o3",
          "GCC_PREPROCESSOR_DEFINITIONS" => "DEBUG=1 SOME_OTHER"
        }

        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["compiler_flags"]).to eq("-DDEBUG=1 -DSOME_OTHER")
          expect(result["swift_compiler_flags"]).to eq("-Dc1 -Dc2 -Dc3 -o1 -o2 -o3")
        end
      end
    end

    context 'supports Enumeration build settings' do
      it 'handles <<otherwise>> option for enumeration' do
        settings = { "CLANG_CXX_LIBRARY" => "libstdc++" }
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["compiler_flags"]).to eq("-stdlib=libstdc++")
          expect(result["linker_flags"]).to eq("-stdlib=libstdc++")
        end
      end

      it 'handles enumeration options' do
        settings = { "SWIFT_SWIFT3_OBJC_INFERENCE" => "Off" }
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["swift_compiler_flags"]).to eq("-Xfrontend -disable-swift3-objc-inference")
        end
      end

      it 'handles integer-like values in enumeration' do
        settings = { "LD_OBJC_ABI_VERSION" => "2" }
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["linker_flags"]).to eq("-Xlinker -objc_abi_version -Xlinker 2")
        end
      end

      it 'handles special values, e.g. YES_THIN' do
        settings = {
          "LLVM_LTO" => "YES_THIN",
          "OBJROOT" => "ObjRoot"
        }
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["compiler_flags"]).to eq("-flto=thin")
          expect(result["linker_flags"]).to eq("-flto=thin -Xlinker -cache_path_lto -Xlinker ObjRoot/LTOCache")
        end
      end

      it 'handles special values, e.g. YES_AGGRESSIVE' do
        settings = { "CLANG_WARN_UNREACHABLE_CODE" => "YES" }
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["compiler_flags"]).to eq("-Wunreachable-code")
        end

        settings["CLANG_WARN_UNREACHABLE_CODE"] = "YES_AGGRESSIVE"
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["compiler_flags"]).to eq("-Wunreachable-code-aggressive")
        end
      end

      let(:macho_mapping) do
        {
          "mh_execute" => "",
          "mh_dylib" => "-dynamiclib",
          "mh_bundle" => "-bundle",
          "mh_object" => "-r"
        }
      end

      it 'handles the special case of MACH_O_TYPE' do
        macho_mapping.each do |type, value|
          settings = { "MACH_O_TYPE" => type }
          build_settings_to_flags_test(build_settings: settings) do |result|
            expect(result["linker_flags"]).to eq(value)
          end
        end
      end
    end

    context 'supports String build settings' do
      it 'maps String build setting with CommandLineArgs with different mapping for bank vs non-blank value' do
        # Some cheating here, since DEPLOYMENT_TARGET_CLANG_FLAG_NAME is env var
        # and should be read via SetValueInEnvironmentVariable.
        settings = {
          "LD_DEPLOYMENT_TARGET" => "DeploymentTarget",
          "DEPLOYMENT_TARGET_CLANG_FLAG_NAME" => "test-flag-name",
          "USE_LLVM_TARGET_TRIPLES_FOR_LD" => "NO"
        }
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["linker_flags"]).to eq("-test-flag-name=DeploymentTarget")
        end

        settings["LD_DEPLOYMENT_TARGET"] = ""
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["linker_flags"]).to be_empty
        end
      end

      it 'maps String build setting with CommandLineArgs not checking for empty value' do
        settings = {
          "SWIFT_DEPLOYMENT_TARGET" => "DeploymentTarget",
          "CURRENT_ARCH" => "TestArch",
          "SWIFT_PLATFORM_TARGET_PREFIX" => "TestPrefix",
          "LLVM_TARGET_TRIPLE_SUFFIX" => "TestSuffix"
        }

        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["swift_compiler_flags"]).to eq("-target TestArch-apple-TestPrefixDeploymentTargetTestSuffix")
        end

        settings["SWIFT_DEPLOYMENT_TARGET"] = ""
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["swift_compiler_flags"]).to eq("-target TestArch-apple-TestPrefixTestSuffix")
        end
      end
    end

    context 'supports Path build settings' do
      it 'maps Path build setting to flags for all tools' do
        settings = { "SDKROOT" => "TestSDKRoot" }
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["compiler_flags"]).to eq("-isysroot TestSDKRoot")
          expect(result["swift_compiler_flags"]).to eq("-sdk TestSDKRoot")
          expect(result["linker_flags"]).to eq("-isysroot TestSDKRoot")
        end
      end
    end

    context 'support PathList build settings' do
      it 'maps PathList build setting' do
        settings = { "FRAMEWORK_SEARCH_PATHS" => "path1 path/2 /path/3" }
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["compiler_flags"]).to be_empty
          expect(result["swift_compiler_flags"]).to be_empty
          expect(result["linker_flags"]).to eq("-Fpath1 -Fpath/2 -F/path/3")
        end
      end
    end

    context 'supports Boolean build settings' do
      it 'maps Boolean build setting with CommandLineFlag' do
        settings = { "GCC_ENABLE_EXCEPTIONS" => "YES" }
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["compiler_flags"]).to eq("-fexceptions")
        end

        # When set to NO should map to no flag.
        settings = { "GCC_ENABLE_EXCEPTIONS" => "NO" }
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["compiler_flags"]).to be_empty
        end
      end

      it 'maps ENABLE_NS_ASSERTIONS properly' do
        settings = { "ENABLE_NS_ASSERTIONS" => "NO" }
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["compiler_flags"]).to eq("-DNS_BLOCK_ASSERTIONS=1")
        end
      end

      it 'handles Boolean build setting with no mapping to flags' do
        settings = { "SWIFT_USE_PARALLEL_WHOLE_MODULE_OPTIMIZATION" => "YES" }
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["compiler_flags"]).to be_empty
        end
      end

      it 'maps Boolean build setting with CommandLineArgs mapped to single string' do
        # SWIFT_WHOLE_MODULE_OPTIMIZATION mapping for YES is a single string, not array.
        settings = { "SWIFT_WHOLE_MODULE_OPTIMIZATION" => "YES" }
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["swift_compiler_flags"]).to eq("-whole-module-optimization")
        end
      end

      it 'maps Boolean build setting with CommandLineArgs mapped to single array' do
        settings = { "SWIFT_SERIALIZE_DEBUGGING_OPTIONS" => "YES" }
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["swift_compiler_flags"]).to eq("-Xfrontend -serialize-debugging-options")
        end
      end

      it 'maps Boolean build setting with CommandLineArgs for NO value and Condition' do
        settings = {
          "CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES" => "NO",
          "CLANG_ENABLE_MODULES" => "YES"
        }
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["compiler_flags"]).to eq("-Wnon-modular-include-in-framework-module -Werror=non-modular-include-in-framework-module -fmodules")
        end

        settings["CLANG_ENABLE_MODULES"] = "NO"
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["compiler_flags"]).to be_empty
        end
      end

      it 'maps Boolean with condition and build settings reference in CommandLineArgs' do
        settings = {
          "SWIFT_INDEX_STORE_ENABLE" => "YES",
          "COMPILER_INDEX_STORE_ENABLE" => "YES",
          "SWIFT_INDEX_STORE_PATH" => "/path/to/index_store"
        }
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["swift_compiler_flags"]).to eq("-index-store-path /path/to/index_store")
        end
      end
    end

    context 'Condition evaluation' do
      it 'resolves complex conditions' do
        # SWIFT_ENABLE_BATCH_MODE good for condition and command line args
        settings = {
          "SWIFT_ENABLE_BATCH_MODE" => "YES",
          "SWIFT_WHOLE_MODULE_OPTIMIZATION" => "NO",
          "SWIFT_OPTIMIZATION_LEVEL" => "-Onone",
          "SWIFT_COMPILATION_MODE" => "singlefile"
        }

        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["swift_compiler_flags"]).to eq("-enable-batch-mode -Onone")
        end

        settings["SWIFT_WHOLE_MODULE_OPTIMIZATION"] = "YES"
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["swift_compiler_flags"]).to eq("-whole-module-optimization -Onone")
        end

        settings["SWIFT_WHOLE_MODULE_OPTIMIZATION"] = "NO"
        settings["SWIFT_OPTIMIZATION_LEVEL"] = "-Owholemodule"
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["swift_compiler_flags"]).to eq("-O -whole-module-optimization")
        end
      end
    end

    context 'AdditionalLinkerArgs' do
      it 'adds AdditionalLinkerArgs to linker_flags' do
        settings = {
          "MACH_O_TYPE" => "mh_object",
          "SWIFT_ENABLE_APP_EXTENSION" => "YES",
          "GCC_GENERATE_TEST_COVERAGE_FILES" => "YES"
        }
        build_settings_to_flags_test(build_settings: settings) do |result|
          expect(result["linker_flags"]).to eq("-r -ftest-coverage -fapplication-extension")
        end
      end
    end

    context 'basic build settings' do
      let(:basic_build_settings) { Fastlane::Actions::ReadXcconfigAction.run(path: config_path("build_flags/basic.xcconfig")) }
      let(:expected_build_flags) { JSON.parse(File.read(fixture_path("configs/build_flags/expected.json"))) }

      it 'maps basic build settings' do
        build_settings_to_flags_test(build_settings: basic_build_settings) do |result|
          expect(result).to eq(expected_build_flags)
        end
      end

      it 'writes build flags to lane context' do
        build_settings_to_flags_test(build_settings: basic_build_settings)
        result = Fastlane::Actions.lane_context[Fastlane::Actions::SharedValues::XCCONFIG_ACTIONS_BUILD_FLAGS]
        expect(result).to eq(expected_build_flags)
      end

      it 'picks up build settings from lane context' do
        Fastlane::Actions::ReadXcconfigAction.run(path: config_path("build_flags/basic.xcconfig"))
        build_settings_to_flags_test(build_settings: basic_build_settings) do |result|
          expect(result).to eq(expected_build_flags)
        end
      end

      it 'saves build flags to output file' do
        output_path = Tempfile.new("build_flags.json").path
        build_settings_to_flags_test(build_settings: basic_build_settings, output_path: output_path)

        result = JSON.parse(File.read(output_path))
        expect(result).to eq(expected_build_flags)
      end
    end

    context 'error handling' do
      it 'raises error when build settings are missing' do
        Fastlane::Actions.lane_context[Fastlane::Actions::SharedValues::XCCONFIG_ACTIONS_BUILD_SETTINGS] = nil
        expect do
          build_settings_to_flags_test
        end.to raise_error(/Missing build settings input/)
      end

      it 'raises error when invalid xcode version or path specified' do
        expect do
          build_settings_to_flags_test(build_settings: {}, xcode: "invalid_value")
        end.to raise_error(/Can't find app path of xcspecs folder for xcode:/)
      end
    end

    context 'run tests on Mac OS X' do
      if FastlaneCore::Helper.mac?
        if File.exist?("/Applications/Xcode.app")
          it 'uses xcspecs from /Applications/Xcode.app path' do
            expect do
              build_settings_to_flags_test(build_settings: {}, xcode: "/Applications/Xcode.app")
            end.not_to(raise_error)
          end
        end
      end
    end
  end
end
