class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products, id: false, primary_key: :sku do |t|
      t.string :sku, null: false
      t.string :name
      t.string :category
      t.decimal :price
      t.string :brand
      t.integer :stock
      t.string :meassure_type
      t.decimal :weight
      t.string :description
      t.references :content_manager, foreign_key: true

      t.timestamps
    end
    
    add_index :products, :sku, unique: true
  end
end
