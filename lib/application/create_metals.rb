class CreateMetals
  def process(intergalactic_unit, metal, credits, guide)
    intergalactic_unit_count = IntergalacticUnitsToDecimal.new(guide[:translations]).to_decimal(intergalactic_unit)
    unit_credits = credits / IntergalacticUnitsToDecimal.new(guide[:translations]).to_decimal(intergalactic_unit)
    guide[:metals][metal] = unit_credits
    guide
  end
end
