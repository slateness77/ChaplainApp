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
	    Employee.create(params.require(:employee).permit(:name, :phone, :station, :birthyear, :email, :password_digest))
	    redirect_to employees_path
	    
	end
	
end
