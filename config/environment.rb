# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
VeraoDoSaneamento::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name => ENV['SENDGRID_USERNAME'],
  :password => ENV['SENDGRID_PASSWORD'],
  :domain => 'verao.meurio.org.br',
  :address => 'smtp.sendgrid.net',
  :port => 587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
