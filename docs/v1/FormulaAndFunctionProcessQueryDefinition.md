# DatadogAPIClient::V1::FormulaAndFunctionProcessQueryDefinition

## Properties

| Name                  | Type                                                                                        | Description                               | Notes                                 |
| --------------------- | ------------------------------------------------------------------------------------------- | ----------------------------------------- | ------------------------------------- |
| **aggregator**        | [**FormulaAndFunctionMetricAggregation**](FormulaAndFunctionMetricAggregation.md)           |                                           | [optional]                            |
| **data_source**       | [**FormulaAndFunctionProcessQueryDataSource**](FormulaAndFunctionProcessQueryDataSource.md) |                                           |                                       |
| **is_normalized_cpu** | **Boolean**                                                                                 | Whether to normalize the CPU percentages. | [optional]                            |
| **limit**             | **Integer**                                                                                 | Number of hits to return.                 | [optional]                            |
| **metric**            | **String**                                                                                  | Process metric name.                      |                                       |
| **name**              | **String**                                                                                  | Name of query for use in formulas.        |                                       |
| **sort**              | [**QuerySortOrder**](QuerySortOrder.md)                                                     |                                           | [optional][default to &#39;desc&#39;] |
| **tag_filters**       | **Array&lt;String&gt;**                                                                     | An array of tags to filter by.            | [optional]                            |
| **text_filter**       | **String**                                                                                  | Text to use as filter.                    | [optional]                            |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::FormulaAndFunctionProcessQueryDefinition.new(
  aggregator: null,
  data_source: null,
  is_normalized_cpu: null,
  limit: null,
  metric: avg:system.cpu.user{*},
  name: query_errors,
  sort: null,
  tag_filters: null,
  text_filter: null
)
```
