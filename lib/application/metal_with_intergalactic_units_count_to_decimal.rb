class MetalWithIntergalacticUnitsCountToDecimal
  attr_reader :guide

  def initialize(guide)
    @guide = guide
  end

  def to_decimal(intergalactic_units, metal)
    decimal_units = IntergalacticUnitsToDecimal.new(guide[:translations]).to_decimal(intergalactic_units)
    decimal_metal = MetalToDecimal.new(guide[:metals]).to_decimal(metal)
    decimal_metal * decimal_units
  end
end
