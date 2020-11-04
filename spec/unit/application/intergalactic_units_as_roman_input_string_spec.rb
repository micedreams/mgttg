require "spec_helper"

describe "intergalactic unit to roman input string" do
  it "accepts the input string and returns intergalactic unit and the corrospoinding roman number" do
    input_string = "glob is I"
    output = ["glob", "I"]
    expect(IntergalacticUnitsAsRomanInputString.new.process(input_string)).to eq(output)
  end

  it "accepts another input string and returns intergalactic unit and the corrospoinding roman number" do
    input_string = "prok is V"
    output = ["prok", "V"]
    expect(IntergalacticUnitsAsRomanInputString.new.process(input_string)).to eq(output)
  end
end
