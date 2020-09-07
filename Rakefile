require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.cucumber_opts = "--format pretty --tags \"not @smoke and not @skip\"" # Any valid command line option can go here.
end
