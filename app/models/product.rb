# == Schema Information
#
# Table name: products
#
#  sku                :string           not null, primary key
#  name               :string
#  category           :string
#  price              :decimal(, )
#  brand              :string
#  stock              :integer
#  meassure_type      :string
#  weight             :decimal(, )
#  weight_unit        :string
#  description        :string
#  content_manager_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Product < ApplicationRecord
  self.primary_key = 'sku'

  belongs_to :content_manager
  has_many :offers
  has_many :products_shopping_carts
  has_many :shopping_carts, :through => :products_shopping_carts
end
