class Product < ApplicationRecord
  belongs_to :content_manager
  has_and_belongs_to_many :offers
  has_and_belongs_to_many :shopping_carts
end
