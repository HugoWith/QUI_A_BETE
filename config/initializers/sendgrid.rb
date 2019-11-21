ActionMailer::Base.smtp_settings = {
  :user_name => 'Quiabete',
  :password => "#{SENDGRID_PASSWORD}"
  :domain => 'quiabete.co',
  :address => 'smtp.sendgrid.net',
  :port => 465,
  :authentication => :plain,
  :enable_starttls_auto => true
}
