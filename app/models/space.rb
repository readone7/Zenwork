class Space < ApplicationRecord
  belongs_to :hub

  validates_presence_of :spacename, :description, :opentime, :closetime, :capacity, :price, :availabile
end
