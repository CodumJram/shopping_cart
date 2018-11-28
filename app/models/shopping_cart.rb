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
    has_and_belongs_to_many :products
    has_many :offers
end
