class AddColumnForBookings < ActiveRecord::Migration
  def change
  	add_column :bookings,:slot,:string
  end
end
