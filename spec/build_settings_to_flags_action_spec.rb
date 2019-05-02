describe Fastlane::Actions::BuildSettingsToFlagsAction do
  describe '#run' do
    it 'handles empty build settings' do
      result = Fastlane::Actions::BuildSettingsToFlagsAction.run(build_settings: {})
      expect(result["compiler_flags"]).to be_empty
      expect(result["swift_compiler_flags"]).to be_empty
      expect(result["linker_flags"]).to be_empty
    end

    let(:build_settings) { Fastlane::Actions::ReadXcconfigAction.run(path: config_path("build_flags/basic.xcconfig")) }
    let(:expected_flags) do
      {
     "compiler_flags" => [
       "-DNS_BLOCK_ASSERTIONS=1",
       "-fembed-bitcode-marker",
       "-fprofile-instr-generate",
       "-fcoverage-mapping",
       "-g",
       "-gmodules",
       "-Wdocumentation",
       "-Werror=conversion",
       "-Wno-sign-conversion",
       "-Wunguarded-availability",
       "-Wunreachable-code-aggressive",
       "-Wno-uninitialized",
       "-O1",
       "-w"
     ].sort,
     "swift_compiler_flags" => [
       "-fembed-bitcode-marker",
       "-enable-testing",
       "-g",
       "-whole-module-optimization",
       "-remove-runtime-asserts",
       "-Onone"
     ].sort,
     "linker_flags" => [
       "-fembed-bitcode-marker",
       "-Xlinker",
       "-export_dynamic",
       "-Xlinker",
       "-no_deduplicate",
       "-fprofile-instr-generate"
     ].sort
   }
    end

    it 'maps build settings correctly' do
      result = Fastlane::Actions::BuildSettingsToFlagsAction.run(build_settings: build_settings)
      compare_build_flags(result, expected_flags)
    end

    it 'writes build flags to lane context' do
      Fastlane::Actions::BuildSettingsToFlagsAction.run(build_settings: build_settings)
      result = Fastlane::Actions.lane_context[Fastlane::Actions::SharedValues::XCCONFIG_ACTIONS_BUILD_FLAGS]
      compare_build_flags(result, expected_flags)
    end

    it 'picks up build settings from lane context' do
      Fastlane::Actions::ReadXcconfigAction.run(path: config_path("build_flags/basic.xcconfig"))
      result = Fastlane::Actions::BuildSettingsToFlagsAction.run({})
      compare_build_flags(result, expected_flags)
    end

    it 'raises error when build settings are missing' do
      Fastlane::Actions.lane_context[Fastlane::Actions::SharedValues::XCCONFIG_ACTIONS_BUILD_SETTINGS] = nil
      expect do
        Fastlane::Actions::BuildSettingsToFlagsAction.run({})
      end.to raise_error(/Missing build settings input/)
    end

    it 'saves build flags to output file' do
      output_path = Tempfile.new("build_flags.json").path
      Fastlane::Actions::BuildSettingsToFlagsAction.run(build_settings: build_settings, output_path: output_path)

      result = JSON.parse(File.read(output_path))
      compare_build_flags(result, expected_flags)
    end
  end
end
