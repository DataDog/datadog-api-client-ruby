# DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinitionCompute

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggregation** | [**FormulaAndFunctionEventAggregation**](FormulaAndFunctionEventAggregation.md) |  |  |
| **interval** | **Integer** | A time interval in milliseconds. | [optional] |
| **metric** | **String** | Measurable attribute to compute. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::FormulaAndFunctionEventQueryDefinitionCompute.new(
  aggregation: null,
  interval: 60000,
  metric: @duration
)
```

