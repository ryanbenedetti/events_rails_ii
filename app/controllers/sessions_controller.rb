class SessionsController < ApplicationController

  def new
  	
  end

  def create
  
  if user = User.authenticate(params[:email], params[:password])
       session[:user_id] = user.id
       flash[:notice] = "Welcome back, #{user.name}!"
       redirect_to user
     else
     	flash.now[:alert] = "Invalid email/password combination!"
        render :new
     end

  end

  # def edit
  	
  # end

  # def update
  	
  # end

  # def destroy
  	
  # end

  # def show
  	
  # end


end
