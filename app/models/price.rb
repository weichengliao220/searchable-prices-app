class Price < ApplicationRecord
  validates :maker_symbol, :model_number, :retail_price, :cost_price, presence: true
end
