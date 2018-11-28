class CreateJoinTableProductsShoppingCart < ActiveRecord::Migration[5.0]
  def change
    create_join_table :products, :shopping_carts do |t|
      t.integer :product_quantity
      t.index [:shopping_cart_id, :product_id], name: 'shopping_cart_on_product_id'
    end
  end
end
