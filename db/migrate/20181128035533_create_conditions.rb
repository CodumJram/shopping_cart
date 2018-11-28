class CreateConditions < ActiveRecord::Migration[5.0]
  def change
    create_table :conditions do |t|
      t.integer :needed_stock
      t.decimal :needed_money_spent
      t.references :offer, foreign_key: true

      t.timestamps
    end
  end
end
