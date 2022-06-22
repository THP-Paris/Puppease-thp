class Wishlist < ApplicationRecord
  belongs_to :fan, class_name: "User", foreign_key: "user_id"
  belongs_to :liked_dog, class_name: "Dog", foreign_key: "dog_id", optional: true
end