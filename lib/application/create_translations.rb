class CreateTranslations
  def process(intergalactic_unit, roman, guide)
    guide[:translations][intergalactic_unit] = roman
    guide
  end
end
