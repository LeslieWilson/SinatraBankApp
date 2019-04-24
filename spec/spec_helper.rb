require "rspec"
require "capybara"
require "capybara/rspec"
require_relative '../server.rb'

Capybara.app = Sinatra::Application
