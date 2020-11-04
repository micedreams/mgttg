require "spec_helper"

describe "accepts input matches with appropriate matchers and sends it to be processed" do
  it "matches the roman to decimal mapping" do
    guide = { translations: {}, metals: {} }
    expected_guide = { translations: { "glob" => "I" }, metals: {} }
    expect(InputString.new(guide).process("glob is I")).to eq(expected_guide)
  end

  it "matches another roman to decimal mapping" do
    guide = { translations: { "glob" => "I" }, metals: {} }
    expected_guide = { translations: { "glob" => "I", "prok" => "V" }, metals: {} }
    expect(InputString.new(guide).process("prok is V")).to eq(expected_guide)
  end

  it "matches the metal to decimal mapping" do
    guide = { translations: { "glob" => "I" }, metals: {} }
    expected_guide = { translations: { "glob" => "I" }, metals: { "Silver" => 17 } }
    expect(InputString.new(guide).process("glob glob Silver is 34 Credits")).to eq(expected_guide)
  end

  it "matches another metal to decimal mapping" do
    guide = { translations: { "glob" => "I", "prok" => "V" }, metals: { "Silver" => 17 } }
    expected_guide = { translations: { "glob" => "I", "prok" => "V" }, metals: { "Silver" => 17, "Gold" => 14450 } }
    expect(InputString.new(guide).process("glob prok Gold is 57800 Credits")).to eq(expected_guide)
  end

  it "matches with the - how much is the intergalctic units - queary" do
    guide = { translations: { "glob" => "I", "prok" => "V", "pish" => "X", "tegj" => "L" },
              metals: { "Gold" => 14450, "Silver" => 17, "Iron" => 195.5 } }
    expect(InputString.new(guide).process("how much is pish tegj glob glob ?")).to eq(42)
  end

  it "matches with another - how much is the intergalctic units - queary" do
    guide = { translations: { "glob" => "I", "prok" => "V", "pish" => "X", "tegj" => "L" },
              metals: { "Gold" => 14450, "Silver" => 17, "Iron" => 195.5 } }
    expect(InputString.new(guide).process("how much is glob glob ?")).to eq(2)
  end

  it "matches with the - how many Credits - queary " do
    guide = { translations: { "glob" => "I", "prok" => "V", "pish" => "X", "tegj" => "L" },
              metals: { "Gold" => 14450, "Silver" => 17, "Iron" => 195.5 } }
    expect(InputString.new(guide).process("how many Credits is glob prok Silver ?")).to eq(68)
  end

  it "matches with another - how many Credits - queary " do
    guide = { translations: { "glob" => "I", "prok" => "V", "pish" => "X", "tegj" => "L" },
              metals: { "Gold" => 14450, "Silver" => 17, "Iron" => 195.5 } }
    expect(InputString.new(guide).process("how many Credits is glob prok Gold ?")).to eq(57800)
  end

  it "handles a string that cannot be matched" do
    input_string = "some string that can't be handled"
    guide = {}
    expect(InputString.new(guide).process(input_string))
      .to eq("I have no idea what you are talking about")
  end
end