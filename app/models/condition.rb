# == Schema Information
#
# Table name: conditions
#
#  id                 :integer          not null, primary key
#  needed_stock       :integer
#  needed_money_spent :decimal(, )
#  offer_id           :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Condition < ApplicationRecord
  belongs_to :offer
end
