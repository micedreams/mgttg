describe "metal to decimal with intergalactic units count" do


  it "accepts count in intergalactic units and metal, returns the credits for it" do
    guide = { translations: { "glob" => "I", "prok" => "V" }, metals: { "Silver" => 17, "Gold" => 14450 } }
    actual_value = MetalWithIntergalacticUnitsCountToDecimal.new(guide).to_decimal("glob glob", "Silver")

    expect(actual_value).to eq(34)
  end

   it "accepts another count in diffrent intergalactic units and metals, returns the credits for it" do
    guide = { translations: { "glob" => "I", "prok" => "V" }, metals: { "Silver" => 17, "Gold" => 14450 } }
     actual_value = MetalWithIntergalacticUnitsCountToDecimal.new(guide).to_decimal("glob prok", "Gold")

     expect(actual_value).to eq(57800)
   end
end
