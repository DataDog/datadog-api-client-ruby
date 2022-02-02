require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'
require 'yard'

Cucumber::Rake::Task.new(:features)

YARD::Rake::YardocTask.new(:docs) do |t|
  t.options += ['--title', "datadog-api-client #{DatadogAPIClient::VERSION} documentation"]
  t.options += ['--markup', 'markdown']
  t.options += ['--markup-provider', 'redcarpet']
  t.options += ['--use-cache']
end
