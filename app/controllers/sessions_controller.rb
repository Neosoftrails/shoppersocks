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
      flash.now.alert = "Invalid email or password"  
      render "new"  
    end  
  end  


 
  def destroy  
   
        if  session[:user_id] = 1
           session[:user_id] = nil  
          redirect_to admin_path, :notice => "Logged in!"  
        else  
          session[:user_id] = nil  
        redirect_to root_url, :notice => "Logged in!"  
        end   
   end


end
