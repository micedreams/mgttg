require "spec_helper"

describe "Metal with Intergalactic units as decimal quary" do
    it "accepts the input string and returns Intergalactic units and metal present in it " do
      input_string = "how many Credits is glob prok Silver ?"
      output = ["glob prok", "Silver"]
      expect(MetalWithIntergalacticUnitsAsDecimalQuaryInputString.new.process(input_string)).to eq(output)
    end
    it "accepts another input string and returns Intergalactic units and metal present in it " do
      input_string = "how many Credits is glob prok Gold ?"
      output = ["glob prok", "Gold"]
      expect(MetalWithIntergalacticUnitsAsDecimalQuaryInputString.new.process(input_string)).to eq(output)
    end
end