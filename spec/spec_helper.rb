require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'capybara-webkit'
require 'support/helper_methods'
require 'support/constants'

Capybara.javascript_driver = :webkit
Capybara.app_host = URL_UNDER_TEST

Capybara::Webkit.configure do |config|
  config.allow_url(URL_UNDER_TEST)
end

RSpec.configure do |config|
  config.include Capybara::DSL
  config.include HelperMethods
end
