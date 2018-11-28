class CreateOfferUnitsPrices < ActiveRecord::Migration[5.0]
  def change
    create_table :offer_units_prices do |t|
      t.decimal :fixed_price
      t.references :offer , foreign_key: true
      
      t.timestamps
    end
  end
end
