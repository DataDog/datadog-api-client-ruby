# DatadogAPIClient::V1::ChangeWidgetRequest

## Properties

| Name                      | Type                                                                                       | Description                                                                                               | Notes      |
| ------------------------- | ------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------- | ---------- |
| **apm_query**             | [**LogQueryDefinition**](LogQueryDefinition.md)                                            |                                                                                                           | [optional] |
| **change_type**           | [**WidgetChangeType**](WidgetChangeType.md)                                                |                                                                                                           | [optional] |
| **compare_to**            | [**WidgetCompareTo**](WidgetCompareTo.md)                                                  |                                                                                                           | [optional] |
| **event_query**           | [**LogQueryDefinition**](LogQueryDefinition.md)                                            |                                                                                                           | [optional] |
| **formulas**              | [**Array&lt;WidgetFormula&gt;**](WidgetFormula.md)                                         | List of formulas that operate on queries. **This feature is currently in beta.**                          | [optional] |
| **increase_good**         | **Boolean**                                                                                | Whether to show increase as good.                                                                         | [optional] |
| **log_query**             | [**LogQueryDefinition**](LogQueryDefinition.md)                                            |                                                                                                           | [optional] |
| **network_query**         | [**LogQueryDefinition**](LogQueryDefinition.md)                                            |                                                                                                           | [optional] |
| **order_by**              | [**WidgetOrderBy**](WidgetOrderBy.md)                                                      |                                                                                                           | [optional] |
| **order_dir**             | [**WidgetSort**](WidgetSort.md)                                                            |                                                                                                           | [optional] |
| **process_query**         | [**ProcessQueryDefinition**](ProcessQueryDefinition.md)                                    |                                                                                                           | [optional] |
| **profile_metrics_query** | [**LogQueryDefinition**](LogQueryDefinition.md)                                            |                                                                                                           | [optional] |
| **q**                     | **String**                                                                                 | Query definition.                                                                                         | [optional] |
| **queries**               | [**Array&lt;FormulaAndFunctionQueryDefinition&gt;**](FormulaAndFunctionQueryDefinition.md) | List of queries that can be returned directly or used in formulas. **This feature is currently in beta.** | [optional] |
| **response_format**       | [**FormulaAndFunctionResponseFormat**](FormulaAndFunctionResponseFormat.md)                |                                                                                                           | [optional] |
| **rum_query**             | [**LogQueryDefinition**](LogQueryDefinition.md)                                            |                                                                                                           | [optional] |
| **security_query**        | [**LogQueryDefinition**](LogQueryDefinition.md)                                            |                                                                                                           | [optional] |
| **show_present**          | **Boolean**                                                                                | Whether to show the present value.                                                                        | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ChangeWidgetRequest.new(
  apm_query: null,
  change_type: null,
  compare_to: null,
  event_query: null,
  formulas: null,
  increase_good: null,
  log_query: null,
  network_query: null,
  order_by: null,
  order_dir: null,
  process_query: null,
  profile_metrics_query: null,
  q: null,
  queries: null,
  response_format: null,
  rum_query: null,
  security_query: null,
  show_present: null
)
```
