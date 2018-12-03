class ContentManager < ApplicationRecord
    #password security
    has_secure_password

    #associations
    has_many :offers
    has_many :products

    #validations
    validates :email, presence: true, uniqueness: true
end
