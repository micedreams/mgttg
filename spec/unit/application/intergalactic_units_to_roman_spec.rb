require "spec_helper"

describe "Intergalactic  unit conversion" do
  translations = { "glob" => "I", "prok" => "V", "pish" => "X", "tegj" => "L" }

    it "return I if glob is passed " do
      expect(IntergalacticUnitsToRoman.new(translations).intergalactic_to_roman("glob")).to eq("I")
    end

    it "return V if pork is passed " do
      expect(IntergalacticUnitsToRoman.new(translations).intergalactic_to_roman("prok")).to eq("V")
    end

    it "return X if pish is passed " do
      expect(IntergalacticUnitsToRoman.new(translations).intergalactic_to_roman("pish")).to eq("X")
    end

    it "return L if tegj is passed " do
      expect(IntergalacticUnitsToRoman.new(translations).intergalactic_to_roman("tegj")).to eq("L")
    end

    it "return invalid if passed IC" do
      expect(IntergalacticUnitsToRoman.new(translations).intergalactic_to_roman("IC")).to eq("")
    end
  end