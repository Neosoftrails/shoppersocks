class SessionsController < ApplicationController
  def new
  end
  
  def create  
    user = User.authenticate(params[:email], params[:password]) 
    if user
       session[:user_id] = user.id  
        if  user.admin = 1
          redirect_to boots_path
        else  
         
        redirect_to root_url, :notice => "Logged in!"  
        end   
    else  
       
        if    params[:service]  == "admin" 
           flash[:error] = "Invalid email or password"  
          redirect_to  admin_path, :error => "Invalid email or password"  

        elsif  params[:service]  == "user" 
           flash[:error] = "Invalid email or password"
            redirect_to log_in_path, :error => "Invalid email or password" 

        end   

    end  
  end  


 
  def destroy  
   
        if  session[:user_id] = 1
           session[:user_id] = nil  
          redirect_to admin_path, :notice => "Logged out!"  
        else  
          session[:user_id] = nil  
        redirect_to root_url, :notice => "Logged out!"  
        end   
   end


end
