# DatadogAPIClient::V2::Metric

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The metric name for this resource. | [optional] |
| **type** | [**MetricType**](MetricType.md) |  | [optional][default to &#39;metrics&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::Metric.new(
  id: test.metric.latency,
  type: null
)
```

