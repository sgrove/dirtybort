ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => "smtp.mydomain.com",
  :port => 587,
  :domain => "mydomain.com",
  :user_name => "myaccount",
  :password => "password",
  :authentication => :login
}
