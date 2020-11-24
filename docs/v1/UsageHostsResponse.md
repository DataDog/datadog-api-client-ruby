# DatadogAPIClient::V1::UsageHostsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage** | [**Array&lt;UsageHostHour&gt;**](UsageHostHour.md) | An array of objects related to host usage. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageHostsResponse.new(
  usage: null
)
```

