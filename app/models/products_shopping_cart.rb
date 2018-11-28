class ProductsShoppingCart < ApplicationRecord
    belongs_to :shopping_cart
    belongs_to :product
end
