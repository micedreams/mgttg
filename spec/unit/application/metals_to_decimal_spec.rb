require "spec_helper"


describe "Metalic unit conversion" do
  metals = { "Gold" => 14450, "Silver" => 17, "Iron" => 195.5 }

  it "return 14450 if gold is passed " do
    expect(MetalToDecimal.new(metals).to_decimal("Gold")).to eq(14450)
  end
  it "return 17 if silver old is passed " do
    expect(MetalToDecimal.new(metals).to_decimal("Silver")).to eq(17)
  end
  it "return 195.5 if iron is passed " do
    expect(MetalToDecimal.new(metals).to_decimal("Iron")).to eq(195.5)
  end
end