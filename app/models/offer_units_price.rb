# == Schema Information
#
# Table name: offer_units_prices
#
#  id            :integer          not null, primary key
#  needed_amount :integer
#  fixed_price   :decimal(, )
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class OfferUnitsPrice < ApplicationRecord
    belongs_to :offer
end
