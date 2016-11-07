require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
#require "active_job/railtie"
#NOTE: if active_record is added back, uncomment config.active_record.raise_in_transactional_callbacks
# below, and ActiveRecord::Migration.maintain_test_schema! in spec/rails_helper.rb
#require "active_record/railtie"
require "action_controller/railtie"
#NOTE: if action_mailer is added back, re-enable commented action_mailer config line in config/environments/test.rb
#require "action_mailer/railtie"
require "action_view/railtie"
# require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module DorIndexingApp
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # NOTE: only commented out because dor_indexing_app needs no DB yet.  uncomment this if that changes.
    # Do not swallow errors in after_commit/after_rollback callbacks.
    #config.active_record.raise_in_transactional_callbacks = true
    
    
    config.api_only = true
  end
end
