# DatadogAPIClient::V2::MetricDistinctVolume

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**MetricDistinctVolumeAttributes**](MetricDistinctVolumeAttributes.md) |  | [optional] |
| **id** | **String** | The metric name for this resource. | [optional] |
| **type** | [**MetricDistinctVolumeType**](MetricDistinctVolumeType.md) |  | [optional][default to &#39;distinct_metric_volumes&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::MetricDistinctVolume.new(
  attributes: null,
  id: test.metric.latency,
  type: null
)
```

