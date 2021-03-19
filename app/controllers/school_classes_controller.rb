class SchoolClassesController < ApplicationController
  def index
		@school_classes = SchoolClass.all
	end

	def show
		@school_classes = SchoolClass.find(params[:id])
	end

	def new
		@school_classes = SchoolClass.new
	end

	def create
	  @school_classes =SchoolClass.new
	  @school_classes.first_name = params[:title]
	  @school_classes.last_name = params[:description]
	  @school_classes.save
	  redirect_to student_path(@school_classes)
	end

	def edit
		@school_classes = Student.find(params[:id])
	end

	def update
		@school_classes = Student.find(params[:id])
		@school_classes.update(params.require(:post).permit(:title, :description)) 
		redirect_to student_path(@school_classes)
	end
 
end