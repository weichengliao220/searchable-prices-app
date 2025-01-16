class AddIndexToPrices < ActiveRecord::Migration[7.1]
  def change
    add_index :prices, :model_number
  end
end
