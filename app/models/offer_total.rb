# == Schema Information
#
# Table name: offer_totals
#
#  id                  :integer          not null, primary key
#  percentage_discount :decimal(, )
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class OfferTotal < ApplicationRecord
    belongs_to :offer
end
