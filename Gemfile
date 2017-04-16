source 'https://rubygems.org'

# Farklı Ruby sürümleri kullanan arkadaşlar CUSTOM_RUBY_VERSION verisini bash/zsh ayar dosyasına ekleyerek
# ya da dotenv gem'i ya da rbenv-vars gibi çözümleri kullanarak kendi kullandıkları sürümle devam edebilir.
# Detay için => https://devcenter.heroku.com/articles/ruby-versions#specifying-a-ruby-version-via-the-environment
ruby ENV['CUSTOM_RUBY_VERSION'] || '2.2.2'

gem 'rails', ' ~> 4.2.1'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails', '~> 3.0.4'
gem 'turbolinks'
gem 'jbuilder', '~> 1.5.3'
gem 'font-awesome-sass'
gem "font-awesome-rails"
gem 'bootstrap-sass', '~> 3.2'
gem 'bootswatch-rails'
gem 'gravatar-ultimate', '~> 2.0.0'
gem 'humanizer', '~> 2.6.0'
gem 'jquery-rails-cdn'
gem 'high_voltage'
gem 'puma'
gem 'activeadmin', github: 'activeadmin'
gem 'devise'
gem 'omniauth'
gem 'omniauth-github'

group :production do
  gem 'pg', '~> 0.17.1'
  gem 'rails_12factor', '~> 0.0.2'
end

group :development, :test do
  gem 'sqlite3', '~> 1.3.8'
  gem 'rspec-rails', '~> 2.99.0'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'shoulda'
  gem 'guard'
  gem 'guard-rspec', require: false
  gem 'guard-spork'
  gem 'spork', '~> 1.0rc'
end

group :development do
  gem 'spring'
  gem 'quiet_assets', '~> 1.0.2'
  gem 'better_errors', '~> 1.0.1'
  gem 'binding_of_caller', '~> 0.7.2'
  gem 'meta_request', '~> 0.2.8'
end
