class SchoolClassesController < ApplicationController
  def index
		@school_class = SchoolClass.all
	end

	def show
		@school_class = SchoolClass.find(params[:id])
	end

	def new
		@school_class = SchoolClass.new
	end

	def create
	  @school_class = SchoolClass.new(school_class_params)
	  
	  @school_class.save
	  redirect_to school_class_path(@school_class)
	end

	def edit
		@school_class = SchoolClass.find(params[:id])
	end

	def update
		@school_class = Schoolclass.find(params[:id])
		@school_class.update(params.require(:post).permit(:title, :description)) 
		redirect_to school_class_path(@school_class)
	end
 
end