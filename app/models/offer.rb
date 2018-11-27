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

class Offer < ApplicationRecord
  belongs_to :content_manager
  has_and_belongs_to_many :products
  has_and_belongs_to_many :shopping_carts
  has_many :offer_get_products
  has_many :offer_totals
  has_many :offer_units_prices
end
