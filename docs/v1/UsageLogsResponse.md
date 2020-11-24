# DatadogAPIClient::V1::UsageLogsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage** | [**Array&lt;UsageLogsHour&gt;**](UsageLogsHour.md) | An array of objects regarding hourly usage of logs. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageLogsResponse.new(
  usage: null
)
```

