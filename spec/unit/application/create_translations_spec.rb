require "spec_helper"

describe "creates translation hash " do
    it "adds a translation to the guide" do
        guide = { translations: {} }
        expected_guide = { translations: {"glob" => "I"} }
        expect(CreateTranslations.new.process("glob", "I", guide)).to eq(expected_guide)
    end

    it "adds another translation to the guide" do
        guide = { translations: { "glob" => "I" } }
        expected_guide = { translations: { "glob" => "I", "prok" => "V" } }
        expect(CreateTranslations.new.process("prok", "V", guide)).to eq(expected_guide)
    end
end