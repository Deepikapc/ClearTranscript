class Course < ActiveRecord::Base
	validates_presence_of :name
	has_many :sections
	has_many :bookings
end
