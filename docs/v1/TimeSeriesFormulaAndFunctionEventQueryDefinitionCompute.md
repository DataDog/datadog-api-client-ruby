# DatadogAPIClient::V1::TimeSeriesFormulaAndFunctionEventQueryDefinitionCompute

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggregation** | [**FormulaAndFunctionEventAggregation**](FormulaAndFunctionEventAggregation.md) |  |  |
| **interval** | **Integer** | A time interval in milliseconds. | [optional] |
| **metric** | **String** | Measurable attribute to compute. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::TimeSeriesFormulaAndFunctionEventQueryDefinitionCompute.new(
  aggregation: null,
  interval: 60000,
  metric: @duration
)
```

