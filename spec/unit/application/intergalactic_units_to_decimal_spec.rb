require "spec_helper"
describe "Intergalactic  unit conversion" do
  translations = { "glob" => "I", "prok" => "V", "pish" => "X", "tegj" => "L" }

    it "return 42 if pish tegj glob glob  is passed " do
      expect(IntergalacticUnitsToDecimal.new(translations).to_decimal(" pish tegj glob glob ")).to eq(42)
    end

  end