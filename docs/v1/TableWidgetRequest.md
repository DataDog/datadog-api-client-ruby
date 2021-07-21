# DatadogAPIClient::V1::TableWidgetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggregator** | [**WidgetAggregator**](WidgetAggregator.md) |  | [optional] |
| **_alias** | **String** | The column name (defaults to the metric name). | [optional] |
| **apm_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **apm_stats_query** | [**ApmStatsQueryDefinition**](ApmStatsQueryDefinition.md) |  | [optional] |
| **cell_display_mode** | [**Array&lt;TableWidgetCellDisplayMode&gt;**](TableWidgetCellDisplayMode.md) | A list of display modes for each table cell. | [optional] |
| **conditional_formats** | [**Array&lt;WidgetConditionalFormat&gt;**](WidgetConditionalFormat.md) | List of conditional formats. | [optional] |
| **event_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **formulas** | [**Array&lt;WidgetFormula&gt;**](WidgetFormula.md) | List of formulas that operate on queries. **This feature is currently in beta.** | [optional] |
| **limit** | **Integer** | For metric queries, the number of lines to show in the table. Only one request should have this property. | [optional] |
| **log_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **network_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **order** | [**WidgetSort**](WidgetSort.md) |  | [optional] |
| **process_query** | [**ProcessQueryDefinition**](ProcessQueryDefinition.md) |  | [optional] |
| **profile_metrics_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **q** | **String** | Query definition. | [optional] |
| **queries** | [**Array&lt;FormulaAndFunctionQueryDefinition&gt;**](FormulaAndFunctionQueryDefinition.md) | List of queries that can be returned directly or used in formulas. **This feature is currently in beta.** | [optional] |
| **response_format** | [**FormulaAndFunctionResponseFormat**](FormulaAndFunctionResponseFormat.md) |  | [optional] |
| **rum_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **security_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::TableWidgetRequest.new(
  aggregator: null,
  _alias: null,
  apm_query: null,
  apm_stats_query: null,
  cell_display_mode: null,
  conditional_formats: null,
  event_query: null,
  formulas: null,
  limit: null,
  log_query: null,
  network_query: null,
  order: null,
  process_query: null,
  profile_metrics_query: null,
  q: null,
  queries: null,
  response_format: null,
  rum_query: null,
  security_query: null
)
```

