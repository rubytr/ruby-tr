require 'rubygems'
require 'spork'
require 'devise'

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

    config.before(:suite) do
      DatabaseCleaner.strategy = :transaction
      DatabaseCleaner.clean_with(:truncation)
    end
    config.before(:all) do
      DatabaseCleaner.start
    end
    config.after(:all) do
      DatabaseCleaner.clean
    end

  end
end

Spork.each_run do
  RubyTr::Application.reload_routes!
  FactoryGirl.definition_file_paths = [File.join(Rails.root, 'spec', 'factories')]
end

def setup_devise
  @request.env["devise.mapping"] = Devise.mappings[:user]
end
