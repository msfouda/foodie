ENV["TEST"] = "1"

# require "simplecov"
# SimpleCov.start

require "pp"

require "bundler/setup"
require "foodie"

root = File.expand_path("../../", __FILE__)
require "#{root}/lib/foodie"

module Helpers
  def execute(cmd)
    puts "Running: #{cmd}" if ENV["DEBUG"]
    out = `#{cmd}`
    puts out if ENV["DEBUG"]
    out
  end
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  # config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.include Helpers

end
