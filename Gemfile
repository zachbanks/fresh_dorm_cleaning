source 'http://rubygems.org'

gem 'rails', '3.1.0'

gem 'sqlite3'
gem 'jquery-rails'

gem 'haml-rails'
gem 'decent_exposure'
gem 'rdiscount' # Markdown parsing.
gem 'pry'

group :assets do
  gem 'sass-rails', "  ~> 3.1.0"
  gem 'coffee-rails', "~> 3.1.0"
  gem 'uglifier'
end

group :development do
  gem 'letter_opener' # Opens ActionMailer messages in browser instead of sending them.
  gem 'annotate', :git => 'git://github.com/ctran/annotate_models.git'
end

# TODO: Move these to either development or test.
group :development, :test do
  # Pretty printed test output
  gem 'turn', :require => false
  gem 'rspec-rails'
  
  # Guard.
  gem 'rb-fsevent'
  gem 'guard-rspec'
#  gem 'livereload'
#  gem 'guard-sass'
  gem 'growl_notify'
end

group :test do
  gem 'capybara'
  gem 'factory_girl_rails'
end

# Don't forget to run bundle install --without production the first time you bundle this app on a new computer.
group :production do
  # Heroku gems.
  gem 'pg' 
end