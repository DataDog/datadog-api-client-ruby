# DatadogAPIClient::V1::UsageAnalyzedLogsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **usage** | [**Array&lt;UsageAnalyzedLogsHour&gt;**](UsageAnalyzedLogsHour.md) | Get hourly usage for analyzed logs. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageAnalyzedLogsResponse.new(
  usage: null
)
```

