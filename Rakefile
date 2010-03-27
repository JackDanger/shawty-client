require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "shawty-client"
    gem.summary = %Q{Easily connect to a Shawty url-shortening server}
    gem.description = %Q{Connects any Ruby app to a Shawty-powered url-shortening server}
    gem.email = "gitcommit@6brand.com"
    gem.homepage = "http://github.com/JackDanger/shawty-client"
    gem.authors = ["Jack Danger Canty"]
    gem.add_development_dependency "thoughtbot-shoulda", ">= 0"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end
  Jeweler::GemcutterTasks.new
rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: gem install jeweler"
end

require 'rake/testtask'
Rake::TestTask.new(:test) do |test|
  test.libs << 'lib' << 'test'
  test.pattern = 'test/**/test_*.rb'
  test.verbose = true
end

task :test => :check_dependencies

task :default => :test