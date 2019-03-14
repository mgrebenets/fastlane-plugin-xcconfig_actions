describe Fastlane::Actions::ValidateXcconfigAction do
  describe '#run' do
    it 'reports no issues for valid xcconfig' do
      validate_test("level1/level1.xcconfig") do |issues|
        expect(issues).to be_empty
      end
    end

    it 'reports includes that do not exist' do
      validate_test("non_existing_include.xcconfig") do |issues|
        expect(issues.join).to include("File does not exist or is a directory:")
      end
    end

    it 'reports circular includes' do
      validate_test("circular_include.xcconfig") do |issues|
        expect(issues.join).to include("Circular includes detected, check the following files:")
      end
    end

    it 'reports bottom-up includes' do
      validate_test("level_up_include.xcconfig") do |issues|
        expect(issues.join).to include("Invalid bottom-up include flow")
      end
    end

    it 'reports 2 or more levels down includes' do
      validate_test("two_levels_down_include.xcconfig") do |issues|
        expect(issues.join).to include("Including another xcconfig 2 or more levels down:")
      end
    end

    it 'reports includes of xcconfigs from the same level' do
      validate_test("same_level_include.xcconfig") do |issues|
        expect(issues.join).to include("Including another xcconfig on the same level:")
      end
    end

    it 'reports duplicated xcconfig includes' do
      validate_test("duplicate_include.xcconfig") do |issues|
        expect(issues.join).to include("Duplicate includes detected:")
      end
    end
  end
end
