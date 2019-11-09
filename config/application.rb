require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ShopifyLoyaltyApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Exception handler
    # config.exceptions_app = lambda { |env|
    #   ExceptionsController.action(:show).call(env)
    # }
    # config.exceptions_app = ->(env) { ExceptionsController.action(:show).call(env) }
  end
end
