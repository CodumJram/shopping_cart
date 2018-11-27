class CreateOfferGetProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :offer_get_products do |t|
      t.integer :free_quantity
      t.references :product, foreign_key: true
      t.references :offers , foreign_key: true

      t.timestamps
    end
  end
end
