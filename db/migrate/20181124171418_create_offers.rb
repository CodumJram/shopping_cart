class CreateOffers < ActiveRecord::Migration[5.0]
  def change
    create_table :offers do |t|
      t.string :name
      t.datetime :start
      t.datetime :end
      t.integer :product_quantity
      t.string :description
      t.references :content_manager, foreign_key: true, optional: false

      t.timestamps
    end
  end
end
