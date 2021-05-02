require 'rubygems'
require 'spork'
require 'devise'
require 'simplecov'
require 'webmock/rspec'

SimpleCov.start do
  enable_coverage :branch
end

WebMock.disable_net_connect!(allow_localhost: true)

ENV["RAILS_ENV"] = 'test'

Spork.prefork do
  require File.dirname(__FILE__) + "/../config/environment" #unless defined?(Rails)
  require 'rspec/rails'
  require 'shoulda'
  include ApplicationHelper

  # Requires supporting files with custom matchers and macros, etc,
  # in ./support/ and its subdirectories.
  Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

  RSpec.configure do |config|
    config.use_transactional_fixtures = false
    config.mock_with :rspec
    config.infer_base_class_for_anonymous_controllers = false
    config.order = "random"

    config.infer_spec_type_from_file_location!

    config.filter_run :focus => true
    config.run_all_when_everything_filtered = true
    config.include Devise::Test::ControllerHelpers, type: :controller

    config.expect_with :rspec do |c|
      c.syntax = :expect
    end

    config.before(:suite) do
      DatabaseCleaner.strategy = :transaction
      DatabaseCleaner.clean_with(:truncation)
    end

    config.before(:each) do
      DatabaseCleaner.start
    end

    config.after(:each) do
      DatabaseCleaner.clean
    end
  end
end

Spork.each_run do
  RubyTr::Application.reload_routes!
  FactoryBot.definition_file_paths = [File.join(Rails.root, 'spec', 'factories')]
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end

def setup_devise
  @request.env["devise.mapping"] = Devise.mappings[:user]
end
