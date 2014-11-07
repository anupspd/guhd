class UserMailer < ActionMailer::Base
  default from: 'universitydemo@presentsoft.mailgun.org'
 
  def welcome_email(user)
    @user = user
    @url  = 'http://example.com/login'
    mail(to: @user.email, subject: 'Your GU Help desk credentials')
    
    
  end
end
