require "spec_helper"

describe "intergalactic_unit_count_query" do
  it "it accepts input string and returns the intergalactic units present in it" do
    input_string = "how much is pish tegj glob glob ?"
    output = "pish tegj glob glob"
    expect(IntergalacticUnitAsDecimalQueryInputString.new.process(input_string)).to eq(output)
  end

  it "it accepts another input string and returns the intergalactic units present in it" do
    input_string = "how much is glob glob ?"
    output = "glob glob"
    expect(IntergalacticUnitAsDecimalQueryInputString.new.process(input_string)).to eq(output)
  end
end