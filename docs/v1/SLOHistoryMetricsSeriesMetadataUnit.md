# DatadogAPIClient::V1::SLOHistoryMetricsSeriesMetadataUnit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **family** | **String** | The family of metric unit, for example &#x60;bytes&#x60; is the family for &#x60;kibibyte&#x60;, &#x60;byte&#x60;, and &#x60;bit&#x60; units. | [optional] |
| **id** | **Integer** | The ID of the metric unit. | [optional] |
| **name** | **String** | The unit of the metric, for instance &#x60;byte&#x60;. | [optional] |
| **plural** | **String** | The plural Unit of metric, for instance &#x60;bytes&#x60;. | [optional] |
| **scale_factor** | **Float** | The scale factor of metric unit, for instance &#x60;1.0&#x60;. | [optional] |
| **short_name** | **String** | A shorter and abbreviated version of the metric unit, for instance &#x60;B&#x60;. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOHistoryMetricsSeriesMetadataUnit.new(
  family: null,
  id: null,
  name: null,
  plural: null,
  scale_factor: null,
  short_name: null
)
```

