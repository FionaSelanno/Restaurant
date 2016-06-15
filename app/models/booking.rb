class Booking < ActiveRecord::Base
  has_many :users
  has_many :locations
  has_many :bookings
end
