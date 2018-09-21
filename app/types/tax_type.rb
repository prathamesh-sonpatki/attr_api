class TaxType < ActiveRecord::Type::Integer
  TAX_PERCENTAGE = 9.0

  def cast(value)
    tax_amount = value * (TAX_PERCENTAGE / 100)

    value = value + tax_amount
    value
  end
end
