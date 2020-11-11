class ApplicationController < ActionController::Base
    # before_action :logged_in_user
    skip_before_action :authorization, only: 'welcome#index'

  def logged_in_user 
    @current_user = User.find_by(id: session[:user_id])
  end 

  def authorization 
    redirect_to new_user_path unless logged_in_user
  end 
end
