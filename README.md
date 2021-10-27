# datadog-api-client-ruby

This repository contains a Ruby API client for the [Datadog API](https://docs.datadoghq.com/api/).
The code is generated using [openapi-generator](https://github.com/OpenAPITools/openapi-generator)
and [apigentools](https://github.com/DataDog/apigentools).

## Requirements

Installing and using the API client library requires:

1. Ruby 2.2+

## Installation

The following steps will help you quickly start interacting with Datadog APIs using Ruby client.

### Install published Ruby gem

1. Add the `datadog_api_client` gem to you Gemfile:

    ```ruby
    source 'https://rubygems.org'
    gem 'datadog_api_client'
    ```

2. Install the gem with `bundle install`

3. (optional) You can configure site and [authentication](#authentication) using environment variables or code block:

    ```ruby
    DatadogAPIClient::V1.configure do |config|
      config.server_variables[:site] = 'datadoghq.eu'
    end
    ```

### Build a gem

1. Build the Ruby code into a gem:

    ```shell
    gem build datadog_api_client.gemspec
    ```

2. Install the gem locally:

    ```shell
    gem install ./datadog_api_client-*.gem
    ```

### Install from Git

1. Add the following in the Gemfile:

    ```ruby
    gem 'datadog_api_client', :git => 'https://github.com/DataDog/datadog-api-client-ruby.git'
    ```

2. Install the gem with `bundle install`

### Include the Ruby code directly

1. Create `example.rb` script (find inspiration on https://docs.datadoghq.com/api/)

2. Include the Ruby code directly using `-I` as follows:

    ```shell
    ruby -Ilib example.rb
    ```

## Getting Started

Please follow the [installation](#installation) instruction and execute the following Ruby code:

```ruby
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::IPRangesAPI.new

begin
  result = api_instance.get_ip_ranges
  p result
rescue DatadogAPIClient::V1::APIError => e
  puts "Error when calling IPRangesAPI->get_ip_ranges: #{e}"
end
```

### Authentication

Authenticate with the API by providing your API and Application keys in the configuration:

```ruby
DatadogAPIClient::V1.configure do |config|
  config.api_key = ENV['NON_STANDARD_NAME_FOR_DD_API_KEY']
  config.application_key = ENV['NON_STANDARD_NAME_FOR_DD_APP_KEY']
end
```

### Unstable (Beta) Endpoints

This client includes access to Datadog API endpoints while they are in an unstable state and may undergo breaking changes. An extra configuration step is required to enable these endpoints:

```ruby
DatadogAPIClient::V1.configure do |config|
  config.unstable_operations[:'<unstable_operation_id>'] = true
end
```

where `<unstable_operation_id>` is the name of the method used to interact with that endpoint. For example: `list_log_indexes`, or `get_logs_index`

### Changing Server

When talking to a different server, like the `eu` instance, change the `server_variables` on your configuration object:

```ruby
config = DatadogAPIClient::V1::Configuration.new
config.server_variables["site"] = "datadoghq.eu"
client = DatadogAPIClient::V1::APIClient.new(config)
```

### Disable compressed payloads

If you want to disable GZIP compressed responses, set the `compress` flag
on your configuration object:

```ruby
config = DatadogAPIClient::V1::Configuration.new
config.compress = false
client = DatadogAPIClient::V1::APIClient.new(config)
```

### Enable requests tracing

If you want to enable requests tracing, set the `debugging` flag
on your configuration object:

```ruby
config = DatadogAPIClient::V1::Configuration.new
config.debugging = true
client = DatadogAPIClient::V1::APIClient.new(config)
```

## Documentation

If you are interested in general documentation for all public Datadog API endpoints, checkout the [general documentation site](api docs).

Developer documentation for supported endpoints and models is divided based on API version prefix to [`v1`](/docs/v1/README.md) and [`v2`](/docs/v2/README.md).

For contributing, checkout the [contribution guidelines](contribution docs) and [development guide][development docs].

## Author

support@datadoghq.com

[api docs]: https://docs.datadoghq.com/api/
[contribution docs]: https://github.com/DataDog/datadog-api-client-ruby/blob/master/CONTRIBUTING.md
[development docs]: https://github.com/DataDog/datadog-api-client-ruby/blob/master/DEVELOPMENT.md
