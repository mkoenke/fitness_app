class SessionController < ApplicationController
    def logout 
        session.delete(:user_id)
    
        redirect_to new_user_path
      end 
end
