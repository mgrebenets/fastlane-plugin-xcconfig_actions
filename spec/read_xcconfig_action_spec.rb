describe Fastlane::Actions::ReadXcconfigAction do
  let(:basic) { read_config_path("basic.xcconfig") }
  let(:parent) { read_config_path("parent.xcconfig") }

  describe '#run' do
    it 'expects input xcconfig file to exist' do
      expect do
        basic_read_test("nosuchfile")
      end.to raise_error(/Couldn't find xcconfig at path:/)
    end

    it 'expects parent xcconfig file to exist' do
      expect do
        parent_read_test("basic.xcconfig", parent: "nosuchfile")
      end.to raise_error(/Couldn't find parent xcconfig at path:/)
    end

    it 'reads basic xcconfig' do
      basic_read_test("basic.xcconfig") do |config|
        expect(config["SRCROOT"]).to eq(File.join(Dir.pwd, "fastlane"))
        expect(config["A"]).to eq("1")
        expect(config["B1"]).to eq("String Value 1")
        expect(config["B2"]).to eq("String Value 2")
        expect(config["B3"]).to eq("String Value 3")
        expect(config["B4"]).to eq("String Value 4")
        expect(config["C"]).to eq("X=1 1")
        expect(config["EMPTY"]).to eq("")
      end
    end

    it 'supports srcroot and target_name options' do
      options = {
        "srcroot" => "custom/srcroot/path",
        "target_name" => "TestTargetName"
      }

      read_lane_test("basic.xcconfig", options: options) do |config|
        expect(config["SRCROOT"]).to eq("custom/srcroot/path")
        expect(config["TARGET_NAME"]).to eq("TestTargetName")
      end
    end

    it 'supports no_resolve option' do
      result = Fastlane::FastFile.new.parse("lane :test do
        read_xcconfig(
          path: '#{basic}',
          no_resolve: true
        )
      end").runner.execute(:test)

      json = JSON.parse(result)
      expect(json["C"]).to eq("X=1 $(A)")
    end

    it 'resolves variable overrides after include' do
      basic_read_test("include_overrides_after_reference.xcconfig") do |config|
        expect(config["A"]).to eq("Overridden 1")
        expect(config["B"]).to eq("Overridden 1")
      end
    end

    it 'resolves variable overrides before include' do
      basic_read_test("include_overrides_before_reference.xcconfig") do |config|
        expect(config["A"]).to eq("Overridden 1")
        expect(config["B"]).to eq("Overridden 1")
      end
    end

    it 'resolves variable overrides from multiple includes (order 1, 2)' do
      basic_read_test("overrides_include_order_1.xcconfig") do |config|
        expect(config["A"]).to eq("Overridden 2")
        expect(config["B"]).to eq("Overridden 2")
      end
    end

    it 'resolves variable overrides from multiple includes (order 2, 1)' do
      basic_read_test("overrides_include_order_2.xcconfig") do |config|
        expect(config["A"]).to eq("Overridden 1")
        expect(config["B"]).to eq("Overridden 1")
      end
    end

    it 'resolves $(inherited) properly when there is no parent config' do
      basic_read_test("inheritance.xcconfig") do |config|
        expect(config["A1"]).to eq("Added_A1")
        expect(config["B1"]).to eq("BeforeAdded_A1After")
        expect(config["A2"]).to eq(" Added_A2 ")
        expect(config["B2"]).to eq("Before Added_A2 After")
        expect(config["A3"]).to eq("Added_A3")
        expect(config["B3"]).to eq("BeforeAdded_A3After")
        expect(config["inherited"]).to eq("EVIL")
      end
    end

    it 'resolves advanced xcconfig with nested variables and // escaping' do
      basic_read_test("advanced.xcconfig") do |config|
        expect(config["SLASH"]).to eq("/")
        expect(config["URL1"]).to eq("http://t1.com")
        expect(config["URL2"]).to eq("https://t2.com")
        expect(config["URL_T1"]).to eq("http://t1.com")
        expect(config["URL_T2"]).to eq("https://t2.com")
        expect(config["VALUE"]).to eq("Value")
        expect(config["VALUE2"]).to eq("Value")
      end
    end

    it 'resolves $(inherited) values from parent config' do
      parent_read_test("inheritance.xcconfig", parent: "parent.xcconfig") do |config|
        expect(config["A"]).to eq("Parent_A")
        expect(config["A1"]).to eq("Parent_A1Added_A1Parent_A1")
        expect(config["A2"]).to eq("Parent_A2 Added_A2 Parent_A2")
        expect(config["A3"]).to eq("Added_A3")
        expect(config["B1"]).to eq("BeforeParent_A1Added_A1Parent_A1After")
        expect(config["B2"]).to eq("BeforeParent_A2 Added_A2 Parent_A2After")
        expect(config["B3"]).to eq("BeforeAdded_A3After")
      end
    end
  end

  if FastlaneCore::Helper.mac?
    describe 'run and compare with Xcode behavior directly' do
      it 'resolves advanced xcconfig with nested variables and // escaping just like Xcode' do
        path = "advanced.xcconfig"
        basic_read_test(path) do |config|
          project = project(path, configuration: "InheritanceOff")
          ["SLASH", "URL1", "URL2", "URL_T1", "URL_T2", "VALUE", "VALUE2"].each do |key|
            expect(config[key]).to eq(project.build_settings(key: key))
          end
        end
      end

      it 'resolves $(inherited) values from parent config just like Xcode' do
        path = "inheritance.xcconfig"
        parent_read_test(path, parent: "parent.xcconfig") do |config|
          project = project(path, configuration: "InheritanceOn")
          ["A", "A1", "A2", "A3", "B1", "B2", "B3"].each do |key|
            expect(config[key]).to eq(project.build_settings(key: key))
          end
        end
      end
    end
  end
end
