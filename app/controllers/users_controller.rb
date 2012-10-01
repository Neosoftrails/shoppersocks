class UsersController < ApplicationController  
   before_filter :login_required
   layout 'admin1', :only => [:index]
 
      def new  
        @user = User.new  
      end  
        
      def create  
        @user = User.new(params[:user])  
        if @user.save 
          UserMailer.registration_confirmation(@user).deliver 
          flash[:success]= "Your account has been created and a registration mail is send to your email_id!"
          redirect_to sign_up_path  
        else  
          render "new"  
        end  
      end  
      
      def index
          
        @users = User.find(:all, :order => "id desc")

        respond_to do |format|
          format.html # index.html.erb
          format.xml  { render :xml => @users }
        end
      end

   def destroy
    @user = User.find(params[:id])
    @user.destroy

    respond_to do |format|
      flash[:success] = "Deleted successfully "
      format.html { redirect_to users_url }
      format.json { head :no_content }
    end
  end

end 

