require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'capybara/poltergeist'
require 'support/helper_methods'
require 'support/constants'

Capybara.default_driver = :poltergeist
Capybara.javascript_driver = :poltergeist
Capybara.app_host = URL_UNDER_TEST

RSpec.configure do |config|
  config.include Capybara::DSL
  config.include HelperMethods
end
