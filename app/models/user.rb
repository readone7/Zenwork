class User < ApplicationRecord
  has_secure_password
  has_many :bookings, dependent: :destroy
  before_save { |user| user.email = email.downcase }

  validates_presence_of :firstname, :lastname, :email, :password_digest
  #VALID EMAIL REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
#  validates :email, format: { with: VALID EMAIL REGEX }, uniqueness: { case_sensitive: false }
end
