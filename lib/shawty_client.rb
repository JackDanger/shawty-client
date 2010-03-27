
class Shawty
  # @server: http://myserver.com
  def initialize(server)
    require 'net/http'
    @server = URI.parse server
  end

  def shrink url
    start do |http|
      http.post("/#{url}", '').read_body
    end
  end

  def expand url
    path = URI.parse(url).path
    start do |http|
      http.get(path)['Location']
    end
  end

  protected

    def start
      Net::HTTP.start @server.host, @server.port do |http|
        yield http
      end
    end
end