class Hub < ApplicationRecord
  has_many :spaces, dependent: :destroy
  has_many :bookings, through: :spaces

  validates_presence_of :hubname, :website, :state, :address
end
