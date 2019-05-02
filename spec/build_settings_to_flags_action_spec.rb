describe Fastlane::Actions::BuildSettingsToFlagsAction do
  describe '#run' do
    it 'handles empty build settings' do
      result = Fastlane::Actions::BuildSettingsToFlagsAction.run(build_settings: {})
      expect(result["compiler_flags"]).to be_empty
      expect(result["swift_compiler_flags"]).to be_empty
      expect(result["linker_flags"]).to be_empty
    end

    let(:build_settings) { Fastlane::Actions::ReadXcconfigAction.run(path: config_path("build_flags/basic.xcconfig")) }
    it 'd' do
      result = Fastlane::Actions::BuildSettingsToFlagsAction.run(build_settings: build_settings)
      puts result
    end
  end
end
