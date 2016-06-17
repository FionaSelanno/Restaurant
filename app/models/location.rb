class Location < ActiveRecord::Base
  mount_uploader :restaurant_pic, ImageUploader

  has_many :menus
  has_many :bookings
  belongs_to :user


  def self.search(search)
    where("restaurant_name ILIKE ?", "%#{search}%")
    where("city ILIKE ? OR description ILIKE ?", "%#{search}%", "%#{search}%"   )
  end

end
