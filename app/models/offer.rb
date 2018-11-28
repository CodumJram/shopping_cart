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
  belongs_to :product, optional: true
  belongs_to :shopping_cart, optional: true

  has_many :offer_get_products
  has_many :offer_totals
  has_many :offer_units_prices
end
