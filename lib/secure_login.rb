module SecureLogin
 
protected

def current_user
	@current_user ||= (session[:user] && User.find_by_id(session[:user])) || :false
end


def login_required

    if session[:user_id] == nil
		
		redirect_to admin_path
	else 
	    redirect_to boots_path	
    end
end

end
    