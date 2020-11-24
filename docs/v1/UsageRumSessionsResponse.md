# DatadogAPIClient::V1::UsageRumSessionsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage** | [**Array&lt;UsageRumSessionsHour&gt;**](UsageRumSessionsHour.md) | Get hourly usage for RUM Sessions. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageRumSessionsResponse.new(
  usage: null
)
```

