# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
FreshDormCleaning::Application.initialize!

# Tell's HAML to format code in production environment too. 
Haml::Template.options[:ugly] = false