$:.unshift(File.expand_path("../", __FILE__))
require "foodie/version"
# require "foodie/food"
require "foodie/generators/recipe"

module Foodie

  autoload :Help, "foodie/help"
  autoload :Command, "foodie/command"
  autoload :CLI, "foodie/cli"
  autoload :Food, "foodie/food"
end
