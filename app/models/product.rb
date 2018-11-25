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

class Product < ApplicationRecord
  belongs_to :content_manager
  has_and_belongs_to_many :offers
  has_and_belongs_to_many :shopping_carts
end
