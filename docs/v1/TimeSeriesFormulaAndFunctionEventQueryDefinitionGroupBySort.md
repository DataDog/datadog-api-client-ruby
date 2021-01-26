# DatadogAPIClient::V1::TimeSeriesFormulaAndFunctionEventQueryDefinitionGroupBySort

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggregation** | [**FormulaAndFunctionEventAggregation**](FormulaAndFunctionEventAggregation.md) |  |  |
| **metric** | **String** | Metric used for sorting group by results. | [optional] |
| **order** | [**QuerySortOrder**](QuerySortOrder.md) |  | [optional][default to &#39;desc&#39;] |
| **type** | [**FormulaAndFunctionEventsSortType**](FormulaAndFunctionEventsSortType.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::TimeSeriesFormulaAndFunctionEventQueryDefinitionGroupBySort.new(
  aggregation: null,
  metric: null,
  order: null,
  type: null
)
```

