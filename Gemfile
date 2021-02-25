# frozen_string_literal: true

source 'https://rubygems.org'

gemspec

group :development, :test do
  gem 'codecov', '!= 0.2.14'
  gem 'cucumber'
  # gem 'ddtrace'
  gem 'ddtrace', require: 'ddtrace/auto_instrument', git: 'https://github.com/datadog/dd-trace-rb', branch: 'adrian.lopezcalvo/rspec-rework-tests-as-separate-traces'
  gem 'rake', '~> 13.0.1'
  gem 'pry-byebug'
  gem 'vcr'
  gem 'rubocop'
  gem 'reek'
  gem 'rspec-expectations'
  gem 'solargraph'
  gem 'timecop'
  gem 'webmock'
end
