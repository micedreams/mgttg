class MetalToDecimal
  attr_reader :metals

  def initialize(metals)
    @metals = metals
  end
  
  def to_decimal(metal)
    metals[metal]
  end
end