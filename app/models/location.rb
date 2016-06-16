class Location < ActiveRecord::Base

has_many :menus
has_many :bookings
belongs_to :user


  def self.search(search)
    where("menu_name ILIKE ? OR menu_discription ILIKE ?""%#{search}%", "%#{search}%"  )
  end

end
