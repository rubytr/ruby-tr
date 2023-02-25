source 'https://rubygems.org'

ruby '~> 3.2.1'

# core
gem 'puma'
gem 'rails', '~> 7.0.4'

# assets
gem 'bootstrap-sass', '>= 3.4.1'
gem 'bootswatch-rails'
gem 'coffee-rails', '~> 5.0'
gem 'font_awesome5_rails'
gem 'jbuilder', '~> 2.10'
gem 'jquery-datatables-rails', '~> 3.4.0'
gem 'jquery-rails', '~> 4.4'
gem 'jquery-rails-cdn'
gem 'sass-rails', '~> 6.0.0'
gem 'turbolinks'
gem 'uglifier', '>= 1.3.0'

# rest
gem 'activeadmin', '~> 2.4'
gem 'devise'
gem 'gravatar-ultimate', '~> 2.0.0'
gem 'kaminari'
gem 'kramdown', require: false
gem 'omniauth'
gem 'omniauth-github'
gem 'omniauth-rails_csrf_protection'
gem 'sentry-raven', '~> 3.0'
gem 'simple_form'
gem 'slack-notifier'
gem 'sprockets-rails', '2.3.3'
gem 'xmlrpc'

group :production do
  gem 'pg'
  gem 'rails_12factor', '~> 0.0.2'
end

group :development, :test do
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'faker', require: false
  gem 'guard'
  gem 'guard-rubocop', require: false
  gem 'guard-spork'
  gem 'rails-controller-testing'
  gem 'rspec-rails'
  gem 'shoulda'
  gem 'simplecov', require: false
  gem 'spork', '~> 1.0rc'
  gem 'sqlite3', '~> 1.4'
  gem 'webmock'
end

group :development do
  gem 'binding_of_caller', git: 'https://github.com/walski/binding_of_caller.git', branch: 'ruby-3'
  gem 'rubocop'
  gem 'spring'
end
