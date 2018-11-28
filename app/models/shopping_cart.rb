# == Schema Information
#
# Table name: shopping_carts
#
#  id         :integer          not null, primary key
#  session    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ShoppingCart < ApplicationRecord
    has_many :products_shopping_carts
    has_many :products, :through => :products_shopping_carts
    has_many :offers
end
