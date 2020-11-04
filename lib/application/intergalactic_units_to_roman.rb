class IntergalacticUnitsToRoman
  attr_reader :translations

  def initialize(translations)
    @translations = translations
  end

  def intergalactic_to_roman(intergalactic_units)
    split_intergalactic_units = intergalactic_units.split(" ")
    intergalactic_units_to_roman = split_intergalactic_units.map { |unit| translations[unit] }.join
  end
end