class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
    	t.time :slot
      t.timestamps null: false
    end
  end
end
