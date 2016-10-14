class ApplicationMailer < ActionMailer::Base
  default :from => 'admin@digitallife.com'

  def send_signup_email(user)
  	@email=user.email
    mail( :to => @email,
    :subject => 'Thanks for signing up for our amazing app' )
  end
end
