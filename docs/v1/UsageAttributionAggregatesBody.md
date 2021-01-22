# DatadogAPIClient::V1::UsageAttributionAggregatesBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **agg_type** | **String** | The aggregate type. | [optional] |
| **field** | **String** | The field. | [optional] |
| **value** | **Float** | The value for a given field. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageAttributionAggregatesBody.new(
  agg_type: sum,
  field: custom_timeseries_usage,
  value: null
)
```

