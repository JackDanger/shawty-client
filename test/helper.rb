require 'rubygems'
gem 'test-unit'
require 'test/unit'
require 'mocha'
require 'shoulda'

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'shawty_client'

class Test::Unit::TestCase
end
