class AccessController < ApplicationController
  
  def menu
  	@username = cookies[:username]
  end

  def new
  end

  def create
  	cookies[:username] = params[:username]
  	redirect_to menu_path
  end

  def destroy
  	redirect_to login_path
  end
end
