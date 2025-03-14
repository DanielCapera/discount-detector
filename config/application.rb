# config/application.rb
require_relative "boot"

require "rails"
# Elimina `active_record/railtie`
require "action_controller/railtie"
require "action_view/railtie"
require "action_mailer/railtie"
require "active_job/railtie"
require "action_cable/engine"
require "sprockets/railtie"

Bundler.require(*Rails.groups)

module DiscountDetector
  class Application < Rails::Application
    config.load_defaults 7.1
    config.generators.orm :mongoid
  end
end
