class User < ApplicationRecord
  has_many :dogs
  has_one :wishlist
  has_many :liked_dogs, through: :wishlist, class_name: "Dog", foreign_key: "dog_id"
  belongs_to :place, optional: true

  has_one_attached :avatar
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


         after_create :welcome_send

         def welcome_send
           UserMailer.welcome_email(self).deliver_now
         end

         extend FriendlyId
         friendly_id :username, use: :slugged

         def add_to_wishlist(dog)
          wishlist.liked_dogs << liked_dog
        end

end
