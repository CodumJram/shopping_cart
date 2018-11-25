class CreateJoinTableOffersOfferUnitsPrice < ActiveRecord::Migration[5.0]
  def change
    create_join_table :offers, :offer_units_prices do |t|
      t.index [:offer_id, :offer_units_price_id], name: 'offer_on_offer_units_price_id'
    end
  end
end
