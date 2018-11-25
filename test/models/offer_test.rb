# == Schema Information
#
# Table name: offers
#
#  id                 :integer          not null, primary key
#  name               :string
#  start              :datetime
#  end                :datetime
#  product_quantity   :integer
#  description        :string
#  content_manager_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class OfferTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
