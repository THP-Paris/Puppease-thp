class User < ApplicationRecord

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
         friendly_id :name, use: :slugged
end
