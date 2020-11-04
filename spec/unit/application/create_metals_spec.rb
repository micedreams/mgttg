require "spec_helper"

describe "creates metals hash" do
  it "adds metals to guide" do
    intergalactic_units = "glob glob"
    metal = "Silver"
    credits = 34
    guide = { translations: { "glob" => "I" }, metals: {} }
    expected_guide = { translations: { "glob" => "I" }, metals: { "Silver" => 17 } }
    expect(CreateMetals.new.process(intergalactic_units, metal, credits, guide)).to eq(expected_guide)
  end

  it "adds another metals to guide" do
    intergalactic_units = "glob prok"
    metal = "Gold"
    credits = 57800
    guide = { translations: { "glob" => "I", "prok" => "V" }, metals: { "Silver" => 17 } }
    expected_guide = { translations: { "glob" => "I", "prok" => "V" }, metals: { "Silver" => 17, "Gold" => 14450 } }
    expect(CreateMetals.new.process(intergalactic_units, metal, credits, guide)).to eq(expected_guide)
  end
end
