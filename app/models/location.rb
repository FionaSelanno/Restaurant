class Location < ActiveRecord::Base

  def self.search(search)
    where("restaurant_name ILIKE ? OR city ILIKE ? OR description ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%"  )
  end

end
