require "spec_helper"

# to run specs with what"s remembered from vcr
#   $ rake
#
# to run specs with new fresh data from aws api calls
#   $ rake clean:vcr ; time rake
describe Foodie::CLI do
  before(:all) do
    @args = "--from Sobhi"
  end

  describe "foodie" do
    it "should hello world" do
      out = execute("exe/foodie hello world #{@args}")
      expect(out).to include("from: Sobhi\nHello world")
    end
  end
end
