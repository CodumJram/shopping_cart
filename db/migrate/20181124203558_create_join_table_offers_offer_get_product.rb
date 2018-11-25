class CreateJoinTableOffersOfferGetProduct < ActiveRecord::Migration[5.0]
  def change
    create_join_table :offers, :offer_get_products do |t|
      t.index [:offer_id, :offer_get_product_id], name: 'offer_on_offer_get_products_id'
    end
  end
end
