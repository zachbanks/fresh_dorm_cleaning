# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
FreshDormCleaning::Application.initialize!

# Tell's HAML to format code in production environment too. 
Haml::Template.options[:ugly] = false

ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "gmail.com",
  :user_name            => ConfidentialData.main_mailer_email,
  :password             => ConfidentialData.main_mailer_password,
  :authentication       => :plain,
  :enable_starttls_auto => true
}