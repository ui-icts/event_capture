# frozen_string_literal: true
ENV["RAILS_ENV"] ||= "test"

require File.expand_path("../dummy/config/environment.rb", __FILE__)
require "rspec/rails"

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.mock_with :rspec
  config.fixture_path = "#{File.dirname(__FILE__)}/fixtures"
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"
  # without this, jbuilder templates fail
  config.render_views = true

  # Include our own helpers
  config.include Controllers::JsonHelpers, type: :controller
end
