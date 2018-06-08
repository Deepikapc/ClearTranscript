class Booking < ActiveRecord::Base
	validates_presence_of :slot
	belongs_to :user
	belongs_to :course
	
	validate :check_user_slot, on: :create

	def check_user_slot
		booking = Booking.find_by(:user_id =>  self.user.id)
		if booking.present?
			errors.add( :slot ," is already booked for that user!")
		end
	end
end
