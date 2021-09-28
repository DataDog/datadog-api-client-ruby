# DatadogAPIClient::V1::ScatterplotTableRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **formulas** | [**Array&lt;ScatterplotWidgetFormula&gt;**](ScatterplotWidgetFormula.md) | List of Scatterplot formulas that operate on queries. **This feature is currently in beta.** | [optional] |
| **queries** | [**Array&lt;FormulaAndFunctionQueryDefinition&gt;**](FormulaAndFunctionQueryDefinition.md) | List of queries that can be returned directly or used in formulas. **This feature is currently in beta.** | [optional] |
| **response_format** | [**FormulaAndFunctionResponseFormat**](FormulaAndFunctionResponseFormat.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ScatterplotTableRequest.new(
  formulas: null,
  queries: null,
  response_format: null
)
```

