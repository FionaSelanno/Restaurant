class User < ActiveRecord::Base
  has_many :bookings
  has_one :location
end
