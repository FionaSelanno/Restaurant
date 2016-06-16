class Menu < ActiveRecord::Base

  belongs_to :location
  has_many :bookings


    def self.search(search)
      where("restaurant_name ILIKE ? OR city ILIKE ? OR description ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%"  )
    end

end
