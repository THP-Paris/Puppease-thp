class User < ApplicationRecord
  has_many :dogs
  belongs_to :place, optional: true
  accepts_nested_attributes_for :place

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

end
