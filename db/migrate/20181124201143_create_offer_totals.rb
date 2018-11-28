class CreateOfferTotals < ActiveRecord::Migration[5.0]
  def change
    create_table :offer_totals do |t|
      t.decimal :percentage_discount
      t.references :offer , foreign_key: true

      t.timestamps
    end
  end
end
