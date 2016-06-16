class Menu < ActiveRecord::Base

  belongs_to :location
  has_many :bookings


    def self.search(search)
      where("menu_name ILIKE ? OR cuisine ILIKE ? OR menu_discription ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%"  )
    end

end
