class Menu < ActiveRecord::Base
\
  belongs_to :location
  has_many :bookings
end
