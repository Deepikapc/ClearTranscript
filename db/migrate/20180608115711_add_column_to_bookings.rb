class AddColumnToBookings < ActiveRecord::Migration
  def change
  	add_column :bookings,:user_id,:integer
  	add_column :bookings,:course_id,:integer 
  end
end
