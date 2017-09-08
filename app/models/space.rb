class Space < ApplicationRecord
  belongs_to :hub
  has_many :bookings, dependent: :destroy

  validates_presence_of :spacename, :description, :opentime, :closetime, :capacity, :price, :availabile
end
