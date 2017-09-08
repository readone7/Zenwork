class User < ApplicationRecord
  has_secure_password
  has_many :bookings, dependent: :destroy
  validates_presence_of :firstname, :lastname, :email, :password_digest
end
