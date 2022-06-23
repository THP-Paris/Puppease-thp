class Wishlist < ApplicationRecord
  belongs_to :fan, class_name: "User", foreign_key: "user_id"
  belongs_to :liked_dog, class_name: "Dog", foreign_key: "dog_id", optional: true
  has_many :wishlist_dogs, dependent: :destroy
  has_many :dogs, through: :wishlist_dogs
end