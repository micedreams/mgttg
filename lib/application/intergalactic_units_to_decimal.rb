class IntergalacticUnitsToDecimal
  attr_reader :translations

  def initialize(translations)
    @translations = translations
  end

  def to_decimal(intergalactic_units)
    roman = IntergalacticUnitsToRoman.new(translations).intergalactic_to_roman(intergalactic_units)
    RomanToDecimal.roman_to_decimal(roman)
  end
end