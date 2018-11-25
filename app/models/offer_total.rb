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
    has_and_belongs_to_many :offers
end
