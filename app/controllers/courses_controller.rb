class CoursesController < ApplicationController
	before_action :authenticate_user!, except:[:index]
	def index
	 @courses	= Course.all
	end
	def new
	 @course = Course.new
	end
	def create
	 @course	= Course.new(course_params)
	 	if @course.save
		 	redirect_to courses_path
		 else
		 	render new_course_path
	 	end
	end
	def show
		@course = Course.find(params[:id])
	end
	def edit
		@course = Course.find(params[:id])
	end
	def update
		@course = Course.find(params[:id])
		if @course.update_attributes(course_params)
			redirect_to courses_path
		else
			render edit_course_path
		end
	end
	def destroy
		@course = Course.find(params[:id])
		@course.destroy
		redirect_to courses_path
	end
	private
	def course_params
		params[:course].permit(:name)
	end
end
