$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'simplecov'
SimpleCov.start do
  add_filter '/spec/'
end

require 'support/number_generator_helper'
require 'number_multiplier'

RSpec.configure do |c|
  c.include NumberGeneratorHelper
end
