# DatadogAPIClient::V1::UsageNetworkHostsHour

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host_count** | **Integer** | Contains the number of active NPM hosts. | [optional] |
| **hour** | **Time** | The hour for the usage. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageNetworkHostsHour.new(
  host_count: null,
  hour: null
)
```

