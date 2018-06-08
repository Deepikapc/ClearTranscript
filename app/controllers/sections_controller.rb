class SectionsController < ApplicationController
	before_action :authenticate_user!, except:[:index]
	def index
		@sections = Section.all
	end

	def new
		@section = Section.new
	end

	def create
		@section = Section.new(secton_params)
		# abort @section.inspect
		if @section.save
			redirect_to sections_path
		else
			render new_section_path
		end
	end

  def show
  	@section = Section.find(params[:id])
  end

  def edit
  	@section = Section.find(params[:id])
  end

  def update
  	@section = Section.find(params[:id])
  	if @section.update_attributes(secton_params)
  		redirect_to sections_path
  	else
  		render edit_section_path
  	end
  end

  def destroy
  	@section = Section.find(params[:id])
  	@section.destroy
  	redirect_to sections_path
  end
	private
	def secton_params
		params[:section].permit(:header,:description,:course_id)
	end
end
