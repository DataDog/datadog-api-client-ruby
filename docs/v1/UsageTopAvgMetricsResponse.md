# DatadogAPIClient::V1::UsageTopAvgMetricsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**UsageTopAvgMetricsMetadata**](UsageTopAvgMetricsMetadata.md) |  | [optional] |
| **usage** | [**Array&lt;UsageTopAvgMetricsHour&gt;**](UsageTopAvgMetricsHour.md) | Number of hourly recorded custom metrics for a given organization. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageTopAvgMetricsResponse.new(
  metadata: null,
  usage: null
)
```

