class BookingsController < ApplicationController
	before_action :authenticate_user!, except:[:index,:show]
	def index
		@bookings=Booking.all
	end
	def new
		@booking=Booking.new
	end
	def create
		@booking=Booking.new(booking_params)
	 @booking.user_id = current_user.id
		if @booking.save
			redirect_to bookings_path
		else
			render new_booking_path
		end
		
	end
	def show
		@booking=Booking.find(params[:id])
	end
	def edit
		@booking=Booking.find(params[:id])
	end
	def update
		@booking=Booking.find(params[:id])
		if @booking.update_attributes(booking_params)
			redirect_to bookings_path
		else
			render edit_booking_path
		end
	end
	def destroy
		@booking=Booking.find(params[:id])
		@booking.destroy
		redirect_to bookings_path
	end

	private
	def booking_params
		params[:booking].permit(:slot,:user_id,:course_id)
	end
end
