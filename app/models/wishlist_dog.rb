class WishlistDog < ApplicationRecord
    belongs_to :dog
    belongs_to :wishlist
    
end
