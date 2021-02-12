# DatadogAPIClient::V2::MetricTagConfigurationUpdateData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**MetricTagConfigurationUpdateAttributes**](MetricTagConfigurationUpdateAttributes.md) |  | [optional] |
| **id** | **String** | The metric name for this resource. |  |
| **type** | [**MetricTagConfigurationType**](MetricTagConfigurationType.md) |  | [default to &#39;manage_tags&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::MetricTagConfigurationUpdateData.new(
  attributes: null,
  id: test.metric.latency,
  type: null
)
```

