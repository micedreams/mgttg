require "spec_helper"

describe "Metal with Intergalactic units as credits from input string" do
  it "extracts the intergalactic units, metal and credits from an input string" do
    input_string = "glob glob Silver is 34 Credits"
    output = ["glob glob", "Silver", 34]
    expect(MetalWithIntergalacticUnitsAsDecimalInputString.new.process(input_string)).to eq(output)
  end

  it "extracts the intergalactic units, metal and credits from another input string" do
    input_string = "glob prok Gold is 57800 Credits"
    output = ["glob prok", "Gold", 57800]
    expect(MetalWithIntergalacticUnitsAsDecimalInputString.new.process(input_string)).to eq(output)
  end
end
