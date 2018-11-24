class CreateJoinTableOffersOfferTotal < ActiveRecord::Migration[5.0]
  def change
    create_join_table :offers, :offer_totals do |t|
      t.index [:offer_id, :offer_total_id], name: 'offer_on_offer_total_id'
    end
  end
end
