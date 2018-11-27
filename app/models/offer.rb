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
  belongs_to :content_managers
  belongs_to :products
  belongs_to :shopping_carts
end
