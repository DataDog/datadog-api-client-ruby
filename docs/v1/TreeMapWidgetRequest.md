# DatadogAPIClient::V1::TreeMapWidgetRequest

## Properties

| Name                | Type                                                                                       | Description                                                                                               | Notes      |
| ------------------- | ------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------- | ---------- |
| **formulas**        | [**Array&lt;WidgetFormula&gt;**](WidgetFormula.md)                                         | List of formulas that operate on queries. **This feature is currently in beta.**                          | [optional] |
| **q**               | **String**                                                                                 | The widget metrics query.                                                                                 | [optional] |
| **queries**         | [**Array&lt;FormulaAndFunctionQueryDefinition&gt;**](FormulaAndFunctionQueryDefinition.md) | List of queries that can be returned directly or used in formulas. **This feature is currently in beta.** | [optional] |
| **response_format** | [**FormulaAndFunctionResponseFormat**](FormulaAndFunctionResponseFormat.md)                |                                                                                                           | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::TreeMapWidgetRequest.new(
  formulas: null,
  q: null,
  queries: null,
  response_format: null
)
```
