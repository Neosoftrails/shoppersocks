class UserMailer < ActionMailer::Base
  default :from => "cardysocks@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.password_reset.subject
  #
  def password_reset(user)
    @user = user

    mail :to => user.email, :subject => "Password Reset"
  end

  def mail_contact_us(name,email,enquiry,telephone)
   @name = name
   @email = email 
   @enquiry = enquiry
   @telephone = telephone
    sendmail = "cardysocks@gmail.com"

    mail :to => sendmail, :subject => "enquiry"

  end
end  
