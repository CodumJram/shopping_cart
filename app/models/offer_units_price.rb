# == Schema Information
#
# Table name: offer_units_prices
#
#  id          :integer          not null, primary key
#  fixed_price :decimal(, )
#  offer_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class OfferUnitsPrice < ApplicationRecord
    belongs_to :offer
end
