class User < ActiveRecord::Base
attr_accessible :first_name, :last_name, :email, :password, :password_confirmation
  attr_accessor :password  
  before_save :encrypt_password 
  before_create { generate_token(:auth_token) }   


  
  validates_presence_of :first_name, :email, :last_name , :message => "This field is required" 
  validates_uniqueness_of :email 
  validates_confirmation_of :password, :message => "Please make sure your passwords match."   
   
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create, :message => "Please enter a valid email address. For example johndoe@domain.com."
  
  def encrypt_password  
    if password.present?  
      self.password_salt = BCrypt::Engine.generate_salt  
      self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)  
    end  
  end  



   def self.authenticate(email, password)  
    user = find_by_email(email)  
    if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)  
      user  
    else  
      nil  
    end  
  end


  def generate_token(column) 
     begin
    self[column] = SecureRandom.urlsafe_base64
  end while User.exists?(column => self[column]) 
  end 

  def send_password_reset
     generate_token(:password_reset_token)
     self.password_reset_sent_at = Time.zone.now
     save! 
     UserMailer.password_reset(self).deliver
   end 

  def send_enquiry_mail(name,email,enquiry,telephone)

    UserMailer.mail_contact_us(name,email,enquiry,telephone).deliver

  end  


end
 
 