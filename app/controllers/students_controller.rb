class StudentsController < ApplicationController
  def index
		@student = Student.all
	end

	def show
		@student = Student.find(params[:id])
	end

	def new
		@student = Student.new
	end

	def create
	  @student = Student.new
	  @student.first_name = params[:title]
	  @student.last_name = params[:description]
	  @student.save
	  redirect_to student_path(@student)
	end

	def edit
		@student = Student.find(params[:id])
	end

	def update
		@student = Student.find(params[:id])
		@student.update(params.require(:post).permit(:title, :description)) 
		redirect_to student_path(@student)
	end

	def student_params
		params.require(:student).permit(:first_name, :last_name)
	end 
end