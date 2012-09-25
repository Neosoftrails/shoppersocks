class UsersController < ApplicationController  
      def new  
        @user = User.new  
      end  
        
      def create  
        @user = User.new(params[:user])  
        if @user.save  
          redirect_to root_url, :notice => "Signed up!"  
        else  
          render "new"  
        end  
      end  
      
      def index
        @users = User.find(:all)

        respond_to do |format|
          format.html # index.html.erb
          format.xml  { render :xml => @users }
        end
      end

end  