class Section < ActiveRecord::Base
	validates_presence_of :header,:description
	belongs_to :course
end
