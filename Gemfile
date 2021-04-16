# frozen_string_literal: true

source 'https://rubygems.org'

gemspec

group :development, :test do
  gem 'cucumber'
  gem 'gem-release'
  # gem 'ddtrace'
  gem 'ddtrace', require: 'ddtrace/auto_instrument', git: 'https://github.com/datadog/dd-trace-rb', ref: 'b233d53e8f8a84ecd2af18987587ce35f142dd82'
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
