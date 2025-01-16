class Price < ApplicationRecord
  validates :maker_symbol, :model_number, :retail_price, :cost_price, presence: true

  include PgSearch::Model
  pg_search_scope :search_by_model_number, against: :model_number, using: { tsearch: { prefix: true } }
end
