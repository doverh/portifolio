# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

  ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :user_name      =>  ENV['SENDGRID_USERNAME'],
  :password       =>  ENV['SENDGRID_PASSWORD'],
  :domain => 'https://iamdover.herokuapp.com/',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true

}