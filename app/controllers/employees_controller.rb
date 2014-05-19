class EmployeesController < ApplicationController

	def index
	    @employee = Employee.all
	    @available_day = AvailableDay.all
	    @station = Station.all
	end


	def show
	    @employee = Employee.find(params[:id])
	    @available_day = AvailableDay.find(params[:id])
	    @station = Station.find(params[:id])
	end

	def new
	    @employee = Employee.new
	    @available_day = AvailableDay.all
	    @station = Station.new
	end

	def create
	    e = Employee.create(params.require(:employee).permit(:name, :phone, :station, :birthyear, :email, :password, :language, :denomination))
	    redirect_to edit_employee_path(e)
	    
	end

	def edit
		@employee = Employee.find(params[:id])
    	# @available_day = AvailableDay.all
	end

	def destroy
		@employee = Employee.find(params[:id])
		@employee.destroy
		redirect_to 
	end
	
end
