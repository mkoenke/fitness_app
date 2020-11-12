class ApplicationController < ActionController::Base
    before_action :logged_in_user
    before_action :authorization

  def logged_in_user 
    @current_user = User.find_by(id: session[:user_id])
  end 

  def authorization 
    flash[:message] = "Please sign up or log in!"
    redirect_to root_path unless logged_in_user
  end 
end
