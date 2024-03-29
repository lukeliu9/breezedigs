source 'https://rubygems.org'

gem 'rails', '3.2.12'
gem "therubyracer"
gem "less-rails" 
gem "twitter-bootstrap-rails"
gem 'bcrypt-ruby', '3.0.1'
gem 'faker', '1.0.1'
gem 'kaminari'
gem 'heroku'
gem 'activeadmin'
gem 'friendly_id'
gem 'client_side_validations'
gem 'active_admin_importable'
gem 'activerecord-reputation-system'
gem "rmagick"
gem 'jquery-star-rating-rails'
gem 'hirb'

gem 'whenever', :require => false #deploying cron jobs

# To be able to upload sitemap to amazon S3
gem 'sitemap_generator'
gem 'carrierwave'
gem 'fog'
gem 'unf'

# Authentication
gem 'devise'
gem 'omniauth'
gem 'omniauth-twitter'
gem 'omniauth-facebook'
gem 'omniauth-google-oauth2'
#Image Upload
gem "paperclip", "3.0.2"
gem 'cocaine', '0.5'
gem 'aws-sdk'
# Used for building search
gem "squeel"
gem "meta_search"
# Geocoding & maps
gem "geocoder"
gem 'gmaps4rails', '1.5.6'

# Heroku production server
gem 'puma'

#Heroku performance
gem 'resque', '1.22.0' # Redis background jobs
gem 'delayed_job_active_record' # background upload of images to
gem 'newrelic_rpm' # App Monitoring

gem 'pg', '0.12.2'

group :production do
 gem 'execjs'
end

group :development do
	gem 'annotate', '~>2.4.1.beta'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '3.2.5'
  gem 'coffee-rails', '3.2.2'
  gem 'uglifier', '1.2.3'
end

gem 'jquery-rails', '2.3.0'
gem "jquery-ui-rails"

group :development, :test do
  gem 'rspec-rails', '2.11.0'
  gem 'guard-rspec', '1.2.1'
  gem 'guard-spork', '1.2.0'  
  gem 'spork', '0.9.2'
end

group :test do
  gem 'capybara', '1.1.2'
  gem 'factory_girl', '~> 2.0.0', require: false
  gem 'factory_girl_rails', '~> 1.1.0', require: false
  gem 'cucumber-rails', '1.2.1', require: false
  gem 'database_cleaner', '0.7.0'
  gem 'launchy', '2.1.0'
  gem 'rb-fsevent', '0.9.1', require: false
  gem 'growl', '1.0.3'
  gem 'childprocess', '0.3.8'
  gem 'simplecov', require: false
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

