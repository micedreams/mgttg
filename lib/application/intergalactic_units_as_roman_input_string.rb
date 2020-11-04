class IntergalacticUnitsAsRomanInputString
  MATCHER = /(.*) is (I|V|X|L|C|D|M)/

  def process(input_string)
    matched_string = input_string.match(MATCHER)
    [matched_string[1], matched_string[2]]
  end
end
