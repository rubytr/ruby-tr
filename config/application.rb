require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env)

module RubyTr
  class Application < Rails::Application

    config.time_zone = 'Istanbul'

    config.i18n.default_locale = :tr

    config.assets.precompile += ['jquery.js']

    config.middleware.use Rack::GoogleAnalytics, tracker: 'UA-52524261-1'

  end
end
