# == Schema Information
#
# Table name: offer_get_products
#
#  id            :integer          not null, primary key
#  free_quantity :integer
#  product_id    :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class OfferGetProduct < ApplicationRecord
  belongs_to :products
  belongs_to :offers
end
