class Price < ApplicationRecord
  include PgSearch::Model

  pg_search_scope :search_by_model_number,
    against: :model_number,
    using: {
      tsearch: { prefix: true }
    }

  validates :maker_symbol, :model_number, :retail_price, :cost_price, presence: true
end
