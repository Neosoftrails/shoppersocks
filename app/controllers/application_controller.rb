class ApplicationController < ActionController::Base
  protect_from_forgery  
  helper_method :current_user
   helper_method :login_required
  
  
    
  private  
  def current_user  
   @current_user ||= User.find_by_auth_token(cookies[:auth_token]) if cookies[:auth_token]  
  end  

  def login_required

    if session[:user_id] == nil
		
		redirect_to admin_path
	end
  end  

end
