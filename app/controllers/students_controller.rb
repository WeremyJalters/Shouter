class StudentsController < ApplicationController

	def show
		@student = Student.find(params[:id])
	end

	def create
		student = Student.new(student_parameters)
		if student.save
			redirect_to student
	    else
	    	redirect_to 'students#index'
	    end
	end

    def index
		@students = Student.all
		@student = Student.new	
	end

	private

	def student_parameters
		params.require(:student).permit(:first_name, :last_name)
	end



	

end

