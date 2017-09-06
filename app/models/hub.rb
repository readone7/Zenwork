class Hub < ApplicationRecord
  has_many :spaces, dependent: :destroy
  
  validates_presence_of :hubname, :website, :state, :address
end
