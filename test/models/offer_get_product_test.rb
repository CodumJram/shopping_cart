# == Schema Information
#
# Table name: offer_get_products
#
#  id            :integer          not null, primary key
#  free_quantity :integer
#  product_id    :integer
#  offer_id      :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class OfferGetProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
