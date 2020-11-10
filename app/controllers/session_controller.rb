class SessionController < ApplicationController
    def logout 
        session.delete(:user_id)
    
        redirect_to new_user_path
    end 

    def logout 
        session.delete(:user_id)
    
        redirect_to users_path
      end 
    
      def new 
      end 
    
      def create 
        user = User.find_by(user_name: params[:session][:username])
         
        if user && user.authenticate(params[:session][:password])
          session[:user_id] = user.id
          redirect_to users_path
        else
          flash[:error] = "Username or Password was incorrect!"
          redirect_to new_login_path
        end 
      end


end
