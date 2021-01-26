# DatadogAPIClient::V1::TimeSeriesFormulaAndFunctionMetricQueryDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggregator** | [**FormulaAndFunctionMetricAggregation**](FormulaAndFunctionMetricAggregation.md) |  | [optional] |
| **data_source** | [**FormulaAndFunctionMetricDataSource**](FormulaAndFunctionMetricDataSource.md) |  |  |
| **name** | **String** | Name of the query for use in formulas. | [optional] |
| **query** | **String** | Metrics query definition. |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::TimeSeriesFormulaAndFunctionMetricQueryDefinition.new(
  aggregator: null,
  data_source: null,
  name: my_query,
  query: avg:system.cpu.user{*}
)
```

