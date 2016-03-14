ENV['RAILS_ENV'] = 'test'

require 'bundler/setup'
Bundler.require

require 'pry'

require File.expand_path("../dummy/config/environment.rb",  __FILE__)
require 'capybara/rspec'
require 'rspec/rails'

RSpec.configure do |config|
  # config.mock_with :rspec
  config.infer_spec_type_from_file_location!
end
