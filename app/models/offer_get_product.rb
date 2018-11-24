class OfferGetProduct < ApplicationRecord
  belongs_to :products
  has_and_belongs_to_many :offers
end
