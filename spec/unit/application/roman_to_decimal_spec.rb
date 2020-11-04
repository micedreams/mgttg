require "spec_helper"

describe "Roman number conversion" do
    it "return 1 if I passed" do
      expect(RomanToDecimal.roman_to_decimal("I")).to eq(1)
    end

    it "return invalid if IC passed" do
      expect(RomanToDecimal.roman_to_decimal("IC")).to eq(nil)
    end
end