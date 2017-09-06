class Hub < ApplicationRecord

  validates_presence_of :hubname, :website, :state, :address
end
