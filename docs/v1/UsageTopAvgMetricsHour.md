# DatadogAPIClient::V1::UsageTopAvgMetricsHour

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **avg_metric_hour** | **Integer** | Average number of timeseries per hour in which the metric occurs. | [optional] |
| **max_metric_hour** | **Integer** | Maximum number of timeseries per hour in which the metric occurs. | [optional] |
| **metric_category** | [**UsageMetricCategory**](UsageMetricCategory.md) |  | [optional] |
| **metric_name** | **String** | Contains the custom metric name. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageTopAvgMetricsHour.new(
  avg_metric_hour: null,
  max_metric_hour: null,
  metric_category: null,
  metric_name: null
)
```

