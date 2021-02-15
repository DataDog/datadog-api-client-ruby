# DatadogAPIClient::V1::TimeSeriesFormulaAndFunctionEventQueryGroupBySort

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggregation** | [**FormulaAndFunctionEventAggregation**](FormulaAndFunctionEventAggregation.md) |  |  |
| **metric** | **String** | Metric used for sorting group by results. | [optional] |
| **order** | [**QuerySortOrder**](QuerySortOrder.md) |  | [optional][default to &#39;desc&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::TimeSeriesFormulaAndFunctionEventQueryGroupBySort.new(
  aggregation: null,
  metric: null,
  order: null
)
```

