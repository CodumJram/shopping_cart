class ContentManager < ApplicationRecord
    has_many :offers
    has_many :products
end
