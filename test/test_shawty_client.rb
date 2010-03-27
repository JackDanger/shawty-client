require 'helper'

class TestShawtyClient < Test::Unit::TestCase


  context "client" do
    setup {
      @server = Shawty.new("http://get.shawty.com")
      @url    = "http://long.url/path"
      @shawt  = "http://get.shawty.com/1DgB6"

    }
    context "shrinking a url" do
      setup {
        response = stub
        response.expects(:read_body).returns(@shawt).once
        http = stub
        http.expects(:post).returns(response).once
        Net::HTTP.expects(:start).yields(http).once

        @server.shrink @url
      }
      should "run expectations" do
        assert true
      end
    end
    context "expanding a url" do
      setup {
        response = stub
        response.expects(:[]).with('Location').returns(@url).once
        http = stub
        http.expects(:get).with(URI.parse(@shawt).path).returns(response).once
        Net::HTTP.expects(:start).yields(http).once

        @server.expand @shawt
      }
      should "run expectations" do
        assert true
      end
    end
  end
end
