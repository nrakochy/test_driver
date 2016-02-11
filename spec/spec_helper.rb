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

options = { js_errors: false }
Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, options)
end

RSpec.configure do |config|
  config.include Capybara::DSL
  config.include HelperMethods
  config.tty = true
  config.color = true
  config.formatter = :documentation
end
