require 'helper'

class TestShawtyClient < Test::Unit::TestCase

  # Damn, not a whole lot to test really until I start writing mocks.

  context "sets server properly" do
    setup {
      @server = Shawty.new("http://get.shawty.com")
    }
    should "set server instance" do
      assert_equal URI.parse("http://get.shawty.com"),
                   @server.instance_variable_get("@server")
    end
  end

end
