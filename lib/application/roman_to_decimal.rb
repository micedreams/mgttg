class RomanToDecimal
    ROMAN_TO_DECIMAL_MAPPING = { M: 1000, D: 500, C: 100, L: 50, X: 10, V: 5, I: 1 }
    ROMAN_NUMERAL_VALIDATION_REGEX = /^M{0,4}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$/

    def self.roman_to_decimal(roman_numerals)
      return unless roman_numerals.match(ROMAN_NUMERAL_VALIDATION_REGEX)

      split_roman_numerals = roman_numerals.split("")
      decimaled_roman_numerals = split_roman_numerals.map { |num| ROMAN_TO_DECIMAL_MAPPING[num.to_sym] }

      i = 0

      while i < decimaled_roman_numerals.length - 1
        decimaled_roman_numerals[i] *= -1 if decimaled_roman_numerals[i] < decimaled_roman_numerals[i + 1]
        i += 1
      end

      decimaled_roman_numerals.inject (:+)
    end
end