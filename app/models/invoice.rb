class Invoice < ApplicationRecord
  attribute :total, :include_tax
end
