# frozen_string_literal: true

source 'https://rubygems.org'

gemspec

group :development, :test do
  gem 'codecov', '!= 0.2.14'
  gem 'cucumber'
  # gem 'ddtrace'
  gem 'ddtrace', require: 'ddtrace/auto_instrument', git: 'https://github.com/datadog/dd-trace-rb', ref: 'b233d53e8f8a84ecd2af18987587ce35f142dd82'
  gem 'licensed'
  gem 'pry-byebug'
  gem 'rake', '~> 13.0.1'
  gem 'reek'
  gem 'rspec-expectations'
  gem 'rubocop'
  gem 'solargraph'
  gem 'timecop'
  gem 'vcr'
  gem 'webmock'
end
