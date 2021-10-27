# DatadogAPIClient::V2::MetricIngestedIndexedVolume

## Properties

| Name           | Type                                                                                  | Description                        | Notes                                           |
| -------------- | ------------------------------------------------------------------------------------- | ---------------------------------- | ----------------------------------------------- |
| **attributes** | [**MetricIngestedIndexedVolumeAttributes**](MetricIngestedIndexedVolumeAttributes.md) |                                    | [optional]                                      |
| **id**         | **String**                                                                            | The metric name for this resource. | [optional]                                      |
| **type**       | [**MetricIngestedIndexedVolumeType**](MetricIngestedIndexedVolumeType.md)             |                                    | [optional][default to &#39;metric_volumes&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::MetricIngestedIndexedVolume.new(
  attributes: null,
  id: test.metric.latency,
  type: null
)
```
