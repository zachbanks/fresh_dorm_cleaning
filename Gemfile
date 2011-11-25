source 'http://rubygems.org'

gem 'rails', '3.1.0'

gem 'sqlite3'
gem 'jquery-rails'

gem 'haml-rails'

group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

group :development, :test do
  # Pretty printed test output
  gem 'turn', :require => false
  gem 'rspec-rails'
  
  gem 'pry'
  
  # Guard.
  gem 'rb-fsevent'
  gem 'guard-rspec'
#  gem 'livereload'
#  gem 'guard-sass'
  gem 'growl_notify'
end

group :production do
  # Heroku gems.
  gem 'pg' 
end