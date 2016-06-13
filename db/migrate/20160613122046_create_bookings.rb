class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.boolean :booked?

      t.timestamps null: false
    end
  end
end
