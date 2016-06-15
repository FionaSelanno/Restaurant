class Location < ActiveRecord::Base
has_many :menus
has_many :bookings
belongs_to :user


  def self.search(search)
    where("restaurant_name ILIKE ? OR city ILIKE ? OR description ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%"  )
  end

end
