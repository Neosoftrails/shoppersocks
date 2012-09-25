class CardysockspagesController < ApplicationController
  def home
  end

  def find_a_shop

  end
  
  def about_us

  end

  def contact_us

  	

  end	

  def send_mail

  	 user = User.find_by_email(params[:email])  
  	 name = params[:first_name]
  	 email = params[:email]
  	 enquiry = params[:enquiry]
     telephone = params[:telephone]

     user.send_enquiry_mail(name,email,enquiry,telephone) if user  
     redirect_to cardysockspages_contact_us_path, :notice => "Your inquiry was submitted and will be responded to as soon as possible. Thank you for contacting us."  
  	
  end

  def products

    	
  end  

  def search_bootcolor

     

  end	

end
