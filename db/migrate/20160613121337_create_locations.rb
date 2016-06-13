class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :restaurant_name
      t.text :description
      t.integer :seats
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end
