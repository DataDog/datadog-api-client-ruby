# DatadogAPIClient::V1::TimeseriesWidgetRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **apm_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **display_type** | [**WidgetDisplayType**](WidgetDisplayType.md) |  | [optional] |
| **event_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **formulas** | [**Array&lt;WidgetFormula&gt;**](WidgetFormula.md) | List of formulas that operate on queries. This feature is currently in beta. | [optional] |
| **log_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **metadata** | [**Array&lt;TimeseriesWidgetExpressionAlias&gt;**](TimeseriesWidgetExpressionAlias.md) | Used to define expression aliases. | [optional] |
| **network_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **on_right_yaxis** | **Boolean** | Whether or not to display a second y-axis on the right. | [optional] |
| **process_query** | [**ProcessQueryDefinition**](ProcessQueryDefinition.md) |  | [optional] |
| **profile_metrics_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **q** | **String** | Widget query. | [optional] |
| **queries** | [**Array&lt;FormulaAndFunctionQueryDefinition&gt;**](FormulaAndFunctionQueryDefinition.md) | List of queries that can be returned directly or used in formulas. This feature is currently in beta. | [optional] |
| **response_format** | [**FormulaAndFunctionResponseFormat**](FormulaAndFunctionResponseFormat.md) |  | [optional] |
| **rum_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **security_query** | [**LogQueryDefinition**](LogQueryDefinition.md) |  | [optional] |
| **style** | [**WidgetRequestStyle**](WidgetRequestStyle.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::TimeseriesWidgetRequest.new(
  apm_query: null,
  display_type: null,
  event_query: null,
  formulas: null,
  log_query: null,
  metadata: null,
  network_query: null,
  on_right_yaxis: null,
  process_query: null,
  profile_metrics_query: null,
  q: null,
  queries: null,
  response_format: null,
  rum_query: null,
  security_query: null,
  style: null
)
```

