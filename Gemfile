source 'https://rubygems.org'

ruby '2.6.0'

# core
gem 'puma'
gem 'rails', '5.2.1'
gem "rack", ">= 2.0.6"
gem "nokogiri", ">= 1.8.5"

# assets
gem "bootstrap-sass", ">= 3.4.1"
gem 'bootswatch-rails'
gem 'coffee-rails', '~> 4.2'
gem 'font-awesome-rails', '~> 4.7'
gem 'jbuilder', '~> 2.7'
gem 'jquery-datatables-rails', '~> 3.4.0'
gem 'jquery-rails', '~> 4.3'
gem 'jquery-rails-cdn'
gem 'sass-rails', '~> 5.0.0'
gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'

# rest
gem 'activeadmin', '~> 1.1'
gem 'devise'
gem 'gravatar-ultimate', '~> 2.0.0'
# gem 'high_voltage'
gem 'humanizer', '~> 2.6.0'
gem 'kramdown', require: false
gem 'omniauth'
gem 'omniauth-github'
gem 'simple_form'
gem 'slack-notifier'
gem 'xmlrpc'

group :production do
  gem 'pg', '~> 0.21.0'
  gem 'rails_12factor', '~> 0.0.2'
end

group :development, :test do
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'faker', require: false
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'guard-rubocop', require: false
  gem 'guard-spork'
  gem 'rspec-rails'
  gem 'rails-controller-testing'
  gem 'shoulda'
  gem 'spork', '~> 1.0rc'
  gem 'sqlite3', '~> 1.3.8'
end

group :development do
  gem 'better_errors', '~> 2.3'
  gem 'binding_of_caller', '~> 0.7.2'
  gem 'meta_request', '~> 0.4'
  # quiet_assets requires railties < 5.0, >= 3.1
  # gem 'quiet_assets', '~> 1.0.2'
  gem 'rubocop'
  gem 'spring'
end
