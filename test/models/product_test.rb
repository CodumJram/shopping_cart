# == Schema Information
#
# Table name: products
#
#  sku                :string           not null
#  name               :string
#  type               :string
#  price              :decimal(, )
#  brand              :string
#  stock              :integer
#  meassure_type      :string
#  weight             :decimal(, )
#  description        :string
#  content_manager_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
