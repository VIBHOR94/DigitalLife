# Load the Rails application.
require File.expand_path('../application', __FILE__)
require 'carrierwave'

# Initialize the Rails application.
Rails.application.initialize!
require 'carrierwave/orm/activerecord'
