# -*- encoding: utf-8 -*-

require_relative "lib/datadog_api_client/version"

Gem::Specification.new do |spec|
  spec.name        = "datadog_api_client"
  spec.version     = DatadogAPIClient::VERSION
  spec.platform    = Gem::Platform::RUBY
  spec.authors     = ["Datadog, Inc."]
  spec.email       = ["support@datadoghq.com"]
  spec.homepage    = "https://github.com/DataDog/"  # datadog-api-client-ruby"
  spec.summary     = "Datadog API Collection Ruby Gem"
  spec.description = "Collection of all Datadog Public API endpoints."
  spec.license     = "Apache-2.0"
  spec.required_ruby_version = ">= 2.2"

  spec.metadata = {
    "homepage_uri"      => "https://datadoghq.com/",
    "bug_tracker_uri"   => "https://github.com/DataDog/datadog-api-client-ruby/issues",
    "changelog_uri"     => "https://github.com/DataDog/datadog-api-client-ruby/blob/master/CHANGELOG.md",
    "documentation_uri" => "https://docs.datadoghq.com/api/",
    "source_code_uri"   => "https://github.com/DataDog/datadog-api-client-ruby"
  }

  spec.add_runtime_dependency "httparty", "~> 0.20", ">= 0.20.0"

  spec.add_runtime_dependency "zeitwerk", "~> 2.6", ">= 2.6.0"

  spec.add_runtime_dependency "uuidtools", "~> 2.1.5", ">= 2.1.5"

  spec.add_development_dependency "rspec", "~> 3.6", ">= 3.6.0"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features|cassettes)/}) }
  spec.test_files    = `git ls-files -z spec/`.split("\x0")
  spec.executables   = []
  spec.require_paths = ["lib"]
end
