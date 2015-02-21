require "rspec"
RSpec.configure do |config|
  # Use expect syntax only
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  # Disable monkey patching for describe
  config.expose_dsl_globally = false

  # Print the 5 slowest examples and example groups
  config.profile_examples = 1
end

require "codeclimate-test-reporter"
CodeClimate::TestReporter.start

require "simplecov"
require "coveralls"
SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]

SimpleCov.start

$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "eslintrb"
