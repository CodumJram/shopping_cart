class CreateJoinTableProductsOffers < ActiveRecord::Migration[5.0]
  def change
    create_join_table :products, :offers do |t|
      t.index [:product_id, :offer_id], name: 'product_on_offer_id'
    end
  end
end
