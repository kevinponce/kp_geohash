# frozen_string_literal: true

require 'pry'
require 'bundler/setup'
require 'kp_geohash'
require 'kp_geohash/borders'
require 'rspec'
require 'simplecov'

Dir['./lib/**/*.rb'].each { |f| require f }

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
