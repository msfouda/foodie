$:.unshift(File.expand_path("../", __FILE__))
require "foodie/version"

module Foodie
  autoload :Help, "foodie/help"
  autoload :Command, "foodie/command"
  autoload :CLI, "foodie/cli"
end
