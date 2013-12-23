source 'https://rubygems.org'

ruby '2.0.0'

gem 'rails', '4.0.2'
gem 'less'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'therubyracer', platforms: :ruby
gem 'font-awesome-less'
gem 'less-rails-bootstrap'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'

gem 'gravatar-ultimate'
gem 'humanizer'
# gem 'flutie' # https://github.com/thoughtbot/flutie
gem 'high_voltage' # https://github.com/thoughtbot/high_voltage
gem 'thin'

group :production, :staging do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem 'quiet_assets'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
end

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end