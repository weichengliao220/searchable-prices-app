class CreatePrices < ActiveRecord::Migration[7.1]
  def change
    create_table :prices do |t|
      t.string :maker_symbol
      t.string :model_number
      t.decimal :retail_price
      t.decimal :cost_price

      t.timestamps
    end
  end
end
