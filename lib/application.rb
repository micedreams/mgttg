require_relative './application/roman_to_decimal.rb'
require_relative './application/intergalactic_units_to_roman.rb'
require_relative './application/intergalactic_units_to_decimal.rb'
require_relative './application/metals_to_decimal.rb'
require_relative './application/metal_with_intergalactic_units_count_to_decimal.rb'
require_relative './application/intergalactic_units_as_roman_input_string.rb'
require_relative './application/create_translations.rb'
require_relative './application/create_metals.rb'
require_relative './application/metals_with_intergalactic_units_count_as_decimal_input_string.rb'
require_relative './application/intergalactic_units_as_decimal_quary_input_string.rb'
require_relative './application/metals_with_intergalactic_units_count_as_decimal_quary_input_string.rb'
require_relative './application/input_string.rb'


class Application
  attr_reader :guide

  def initialize
    @guide  =  {
      translations: {},
      metals: {}
    }
  end

  def execute
    puts "press ^D to exit"
    puts "input string: "
    loop do
      input_string = gets.chomp
      InputString.new(guide).process(input_string)
    end
  end
end

Application.new.execute