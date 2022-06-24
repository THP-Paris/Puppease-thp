class WishlistDog < ApplicationRecord
    belongs_to :dog
    belongs_to :wishlist
    validates :dog_id,  uniqueness: true
    
end
