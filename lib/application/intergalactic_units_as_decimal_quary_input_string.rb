class IntergalacticUnitAsDecimalQueryInputString
  MATCHER = /how much is (.*) \?/

  def process(input_string)
    matched_string = input_string.match(MATCHER)
    matched_string[1]
  end
end