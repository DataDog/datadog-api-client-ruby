# DatadogAPIClient::V1::SlackIntegrationApi

All URIs are relative to *https://api.datadoghq.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_slack_integration_channel**](SlackIntegrationApi.md#create_slack_integration_channel) | **POST** /api/v1/integration/slack/configuration/accounts/{account_name}/channels | Create a Slack integration channel |
| [**get_slack_integration_channel**](SlackIntegrationApi.md#get_slack_integration_channel) | **GET** /api/v1/integration/slack/configuration/accounts/{account_name}/channels/{channel_name} | Get a Slack integration channel |
| [**get_slack_integration_channels**](SlackIntegrationApi.md#get_slack_integration_channels) | **GET** /api/v1/integration/slack/configuration/accounts/{account_name}/channels | Get all channels in a Slack integration |
| [**remove_slack_integration_channel**](SlackIntegrationApi.md#remove_slack_integration_channel) | **DELETE** /api/v1/integration/slack/configuration/accounts/{account_name}/channels/{channel_name} | Remove a Slack integration channel |
| [**update_slack_integration_channel**](SlackIntegrationApi.md#update_slack_integration_channel) | **PATCH** /api/v1/integration/slack/configuration/accounts/{account_name}/channels/{channel_name} | Update a Slack integration channel |


## create_slack_integration_channel

> <SlackIntegrationChannel> create_slack_integration_channel(account_name, body)

Create a Slack integration channel

Add a channel to your Datadog-Slack integration.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::SlackIntegrationApi.new
account_name = 'account_name_example' # String | Your Slack account name.
body = DatadogAPIClient::V1::SlackIntegrationChannel.new # SlackIntegrationChannel | Payload describing Slack channel to be created

begin
  # Create a Slack integration channel
  result = api_instance.create_slack_integration_channel(account_name, body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling SlackIntegrationApi->create_slack_integration_channel: #{e}"
end
```

#### Using the create_slack_integration_channel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SlackIntegrationChannel>, Integer, Hash)> create_slack_integration_channel_with_http_info(account_name, body)

```ruby
begin
  # Create a Slack integration channel
  data, status_code, headers = api_instance.create_slack_integration_channel_with_http_info(account_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SlackIntegrationChannel>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling SlackIntegrationApi->create_slack_integration_channel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_name** | **String** | Your Slack account name. |  |
| **body** | [**SlackIntegrationChannel**](SlackIntegrationChannel.md) | Payload describing Slack channel to be created |  |

### Return type

[**SlackIntegrationChannel**](SlackIntegrationChannel.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_slack_integration_channel

> <SlackIntegrationChannel> get_slack_integration_channel(account_name, channel_name)

Get a Slack integration channel

Get a channel configured for your Datadog-Slack integration.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::SlackIntegrationApi.new
account_name = 'account_name_example' # String | Your Slack account name.
channel_name = 'channel_name_example' # String | The name of the Slack channel being operated on.

begin
  # Get a Slack integration channel
  result = api_instance.get_slack_integration_channel(account_name, channel_name)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling SlackIntegrationApi->get_slack_integration_channel: #{e}"
end
```

#### Using the get_slack_integration_channel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SlackIntegrationChannel>, Integer, Hash)> get_slack_integration_channel_with_http_info(account_name, channel_name)

```ruby
begin
  # Get a Slack integration channel
  data, status_code, headers = api_instance.get_slack_integration_channel_with_http_info(account_name, channel_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SlackIntegrationChannel>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling SlackIntegrationApi->get_slack_integration_channel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_name** | **String** | Your Slack account name. |  |
| **channel_name** | **String** | The name of the Slack channel being operated on. |  |

### Return type

[**SlackIntegrationChannel**](SlackIntegrationChannel.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_slack_integration_channels

> <Array<SlackIntegrationChannel>> get_slack_integration_channels(account_name)

Get all channels in a Slack integration

Get a list of all channels configured for your Datadog-Slack integration.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::SlackIntegrationApi.new
account_name = 'account_name_example' # String | Your Slack account name.

begin
  # Get all channels in a Slack integration
  result = api_instance.get_slack_integration_channels(account_name)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling SlackIntegrationApi->get_slack_integration_channels: #{e}"
end
```

#### Using the get_slack_integration_channels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<SlackIntegrationChannel>>, Integer, Hash)> get_slack_integration_channels_with_http_info(account_name)

```ruby
begin
  # Get all channels in a Slack integration
  data, status_code, headers = api_instance.get_slack_integration_channels_with_http_info(account_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<SlackIntegrationChannel>>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling SlackIntegrationApi->get_slack_integration_channels_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_name** | **String** | Your Slack account name. |  |

### Return type

[**Array&lt;SlackIntegrationChannel&gt;**](SlackIntegrationChannel.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## remove_slack_integration_channel

> remove_slack_integration_channel(account_name, channel_name)

Remove a Slack integration channel

Remove a channel from your Datadog-Slack integration.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::SlackIntegrationApi.new
account_name = 'account_name_example' # String | Your Slack account name.
channel_name = 'channel_name_example' # String | The name of the Slack channel being operated on.

begin
  # Remove a Slack integration channel
  api_instance.remove_slack_integration_channel(account_name, channel_name)
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling SlackIntegrationApi->remove_slack_integration_channel: #{e}"
end
```

#### Using the remove_slack_integration_channel_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_slack_integration_channel_with_http_info(account_name, channel_name)

```ruby
begin
  # Remove a Slack integration channel
  data, status_code, headers = api_instance.remove_slack_integration_channel_with_http_info(account_name, channel_name)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling SlackIntegrationApi->remove_slack_integration_channel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_name** | **String** | Your Slack account name. |  |
| **channel_name** | **String** | The name of the Slack channel being operated on. |  |

### Return type

nil (empty response body)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_slack_integration_channel

> <SlackIntegrationChannel> update_slack_integration_channel(account_name, channel_name, body)

Update a Slack integration channel

Update a channel used in your Datadog-Slack integration.

### Examples

```ruby
require 'time'
require 'datadog_api_client'

api_instance = DatadogAPIClient::V1::SlackIntegrationApi.new
account_name = 'account_name_example' # String | Your Slack account name.
channel_name = 'channel_name_example' # String | The name of the Slack channel being operated on.
body = DatadogAPIClient::V1::SlackIntegrationChannel.new # SlackIntegrationChannel | Payload describing fields and values to be updated.

begin
  # Update a Slack integration channel
  result = api_instance.update_slack_integration_channel(account_name, channel_name, body)
  p result
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling SlackIntegrationApi->update_slack_integration_channel: #{e}"
end
```

#### Using the update_slack_integration_channel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SlackIntegrationChannel>, Integer, Hash)> update_slack_integration_channel_with_http_info(account_name, channel_name, body)

```ruby
begin
  # Update a Slack integration channel
  data, status_code, headers = api_instance.update_slack_integration_channel_with_http_info(account_name, channel_name, body)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SlackIntegrationChannel>
rescue DatadogAPIClient::V1::ApiError => e
  puts "Error when calling SlackIntegrationApi->update_slack_integration_channel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_name** | **String** | Your Slack account name. |  |
| **channel_name** | **String** | The name of the Slack channel being operated on. |  |
| **body** | [**SlackIntegrationChannel**](SlackIntegrationChannel.md) | Payload describing fields and values to be updated. |  |

### Return type

[**SlackIntegrationChannel**](SlackIntegrationChannel.md)

### Authorization

[apiKeyAuth](README.md#apiKeyAuth), [appKeyAuth](README.md#appKeyAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

