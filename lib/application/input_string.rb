class InputString
  attr_reader :guide

  def initialize(guide)
    @guide = guide || { translations: {}, metals: {} }
  end

  def process(input_string)
    if (input_string.match(IntergalacticUnitsAsRomanInputString::MATCHER))
      value = IntergalacticUnitsAsRomanInputString.new.process(input_string)
      @guild = CreateTranslations.new.process(*value, guide)

    elsif (input_string.match(MetalWithIntergalacticUnitsAsDecimalInputString::MATCHER))
      value = MetalWithIntergalacticUnitsAsDecimalInputString.new.process(input_string)
      @guild = CreateMetals.new.process(*value, guide)

    elsif (input_string.match(IntergalacticUnitAsDecimalQueryInputString::MATCHER))
      value = IntergalacticUnitAsDecimalQueryInputString.new.process(input_string)
      print_value = IntergalacticUnitsToDecimal.new(guide[:translations]).to_decimal(value)
      puts "#{value} is #{print_value}"
      print_value

    elsif (input_string.match(MetalWithIntergalacticUnitsAsDecimalQuaryInputString::MATCHER))
      value = MetalWithIntergalacticUnitsAsDecimalQuaryInputString.new.process(input_string)
      print_value = MetalWithIntergalacticUnitsCountToDecimal.new(guide).to_decimal(*value)
      puts "#{value.join(" ")} is #{print_value}"
      print_value

    else
      print_value = "I have no idea what you are talking about"
      puts print_value
      print_value
    end
  end
end