# DatadogAPIClient::V1::DistributionWidgetYAxis

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **include_zero** | **Boolean** | True includes zero. | [optional] |
| **label** | **String** | The label of the axis to display on the graph. | [optional] |
| **max** | **String** | Specifies the maximum value to show on the y-axis. It takes a number, or auto for default behavior. | [optional][default to &#39;auto&#39;] |
| **min** | **String** | Specifies minimum value to show on the y-axis. It takes a number, or auto for default behavior. | [optional][default to &#39;auto&#39;] |
| **scale** | **String** | Specifies the scale type. Possible values are &#x60;linear&#x60; or &#x60;log&#x60;. | [optional][default to &#39;linear&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::DistributionWidgetYAxis.new(
  include_zero: null,
  label: null,
  max: null,
  min: null,
  scale: null
)
```

