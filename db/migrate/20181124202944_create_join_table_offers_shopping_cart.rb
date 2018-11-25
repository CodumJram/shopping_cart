class CreateJoinTableOffersShoppingCart < ActiveRecord::Migration[5.0]
  def change
    create_join_table :offers, :shopping_carts do |t|
      t.index [:shopping_cart_id, :offer_id], name: 'shopping_cart_on_offer_id'
    end
  end
end
