class AccessController < ApplicationController
  
  def menu
  	@username = cookies[:username]
  	@language = session[:language]
  end

  def new
  end

  def create
  	logger.info("Login Process started in Create Action")
  	cookies[:username] = params[:username]
  	session[:language] = "en"
  	flash[:notice]="Login Successful"
  	redirect_to menu_path
  end

  def destroy
  	redirect_to login_path
  end
end
