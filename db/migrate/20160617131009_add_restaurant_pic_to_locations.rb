class AddRestaurantPicToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :restaurant_pic, :string
  end
end
