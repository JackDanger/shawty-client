= Shawty Client

For use with [Shawty](http://github.com/JackDanger/shawty-server)


== HowTo

    server = Shawty.new "http://my.shawty.server.com:8888/"
    link = server.shrink "http://maps.google.com/maps/..."
    # => "http://my.shawty.server.com:8888/a7D"
    biggie = server.expand link
    # => "http://maps.google.com/maps/..."


Patches welcome, forks celebrated

Copyright (c) 2010 Jack Danger Canty. See LICENSE for details.
