# DatadogAPIClient::V1::SlackIntegrationChannel

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display** | [**SlackIntegrationChannelDisplay**](SlackIntegrationChannelDisplay.md) |  | [optional] |
| **name** | **String** | Your channel name. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SlackIntegrationChannel.new(
  display: null,
  name: #general
)
```

