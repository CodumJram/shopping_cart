class CreateOfferUnitsPrices < ActiveRecord::Migration[5.0]
  def change
    create_table :offer_units_prices do |t|
      t.integer :needed_amount
      t.decimal :fixed_price
      t.references :offers , foreign_key: true
      
      t.timestamps
    end
  end
end
