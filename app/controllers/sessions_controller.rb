class SessionsController < ApplicationController

  def new
  end

  def create
    @user = Employee.where(:email => params[:session][:email]).first
  	if @user && @user.authenticate(params[:session][:password])
  		flash[:success] = "HELLO " + @user.name + " You have logged in"
  		session[:remember_token] = @user.id
      # puts session[:remember_token] + " ******************************"
  		@current_user = @user
  		redirect_to edit_employee_path(@user)
  	else
  		flash[:error] = "Invalid email/password combination"
      
  		render 'new'
  		end
  	end

  def destroy
  	session.delete(:remember_token)
  	redirect_to stations_path
  end

  def new_deputy
  end

  def create_deputy
    if params[:session][:code].downcase == "disneyland"
      session[:remember_token] = "deputy"
      redirect_to stations_path
    else
      flash[:danger] = "Invalid Password"
      render :new_deputy
   end
  end

  protected

  def employee_params
    params.require(:employee).permit(:name, :email, :password)
  end
end