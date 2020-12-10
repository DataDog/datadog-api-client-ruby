# DatadogAPIClient::V1::UsageNetworkHostsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage** | [**Array&lt;UsageNetworkHostsHour&gt;**](UsageNetworkHostsHour.md) | Get hourly usage for NPM hosts. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageNetworkHostsResponse.new(
  usage: null
)
```

