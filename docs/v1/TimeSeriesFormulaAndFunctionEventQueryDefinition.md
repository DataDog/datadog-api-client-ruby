# DatadogAPIClient::V1::TimeSeriesFormulaAndFunctionEventQueryDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **compute** | [**TimeSeriesFormulaAndFunctionEventQueryDefinitionCompute**](TimeSeriesFormulaAndFunctionEventQueryDefinitionCompute.md) |  |  |
| **data_source** | [**FormulaAndFunctionEventsDataSource**](FormulaAndFunctionEventsDataSource.md) |  |  |
| **group_by** | [**Array&lt;TimeSeriesFormulaAndFunctionEventQueryDefinitionGroupBy&gt;**](TimeSeriesFormulaAndFunctionEventQueryDefinitionGroupBy.md) | Group by options. | [optional] |
| **indexes** | **Array&lt;String&gt;** | An array of index names to query in the stream. Omit or use &#x60;[]&#x60; to query all indexes at once. | [optional] |
| **name** | **String** | Name of the query for use in formulas. | [optional] |
| **search** | [**TimeSeriesFormulaAndFunctionEventQueryDefinitionSearch**](TimeSeriesFormulaAndFunctionEventQueryDefinitionSearch.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::TimeSeriesFormulaAndFunctionEventQueryDefinition.new(
  compute: null,
  data_source: null,
  group_by: null,
  indexes: [&quot;days-3&quot;,&quot;days-7&quot;],
  name: query_errors,
  search: null
)
```

