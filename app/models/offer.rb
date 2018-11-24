class Offer < ApplicationRecord
  belongs_to :content_manager
  has_and_belongs_to_many :products
  has_and_belongs_to_many :shopping_carts
  has_and_belongs_to_many :offer_totals
  has_and_belongs_to_many :offer_get_products
  has_and_belongs_to_many :offer_units_prices
end
