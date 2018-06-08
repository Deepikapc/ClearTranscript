class RemoveColumnToBookings < ActiveRecord::Migration
  def change
  	remove_column :bookings, :slot
  end
end
