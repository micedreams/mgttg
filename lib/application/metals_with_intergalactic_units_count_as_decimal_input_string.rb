class MetalWithIntergalacticUnitsAsDecimalInputString
  MATCHER = /(.*) (.*) is (.*) Credits/

  def process(input_string)
    matched_string = input_string.match(MATCHER)
    [matched_string[1], matched_string[2], matched_string[3].to_i]
  end
end