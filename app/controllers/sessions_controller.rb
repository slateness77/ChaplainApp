class SessionsController < ApplicationController

  def new
  end

  def create
    @employee = Employee.where(:email => params[:session][:email]).first
  	if @employee && @employee.authenticate(params[:session][:password])
  		flash[:success] = "HELLO " + @employee.name + " You have logged in"
  		session[:remember_token] = @employee.id.to_s
      # puts session[:remember_token] + " ******************************"
  		@current_user = @employee
  		redirect_to stations_path
  	else
  		flash[:error] = "Invalid email/password combination"
      
  		render 'new'
  		end
  	end

  def destroy
  	session.delete(:remember_token)
  	redirect_to stations_path
  end

  protected

  def employee_params
    params.require(:employee).permit(:name, :email, :password)
  end




  
end