ruby '2.1.3'
source 'http://rubygems.org'
gem 'rails', '4.1.6'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

# for Heroku deployment - as described in Ap. A of ELLS book
group :development, :test do
  gem 'sqlite3'
  gem 'byebug'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'launchy'
  gem 'rspec-rails'
  gem 'thin'
end

group :test do
  gem 'cucumber-rails',                  :require => false
  gem 'cucumber-rails-training-wheels'
  gem 'database_cleaner'
  gem 'selenium-webdriver'
  gem 'capybara'
  gem 'factory_girl_rails','~> 4.2.1'
  gem 'simplecov', :require => false, :group => :test
  gem 'rspec-activemodel-mocks', '~> 1.0.1'
end

group :production do
  gem 'pg'
  # Use unicorn as the web server removes lots of potential heroku issues.
  gem 'unicorn'
  gem 'rails_12factor'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'therubyracer', '~> 0.12.0'
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jquery-datatables-rails', github: 'rweng/jquery-datatables-rails' 
gem 'haml'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'bcrypt-ruby', '3.1.2' ## added 3.1 login logout

# Deploy with Capistrano
# gem 'capistrano'
