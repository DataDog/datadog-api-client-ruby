# DatadogAPIClient::V2::MetricTagConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**MetricTagConfigurationAttributes**](MetricTagConfigurationAttributes.md) |  | [optional] |
| **id** | **String** | The metric name for this resource. | [optional] |
| **type** | [**MetricTagConfigurationType**](MetricTagConfigurationType.md) |  | [optional][default to &#39;manage_tags&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::MetricTagConfiguration.new(
  attributes: null,
  id: test.metric.latency,
  type: null
)
```

