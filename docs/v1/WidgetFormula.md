# DatadogAPIClient::V1::WidgetFormula

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_alias** | **String** | Expression alias. | [optional] |
| **cell_display_mode** | [**TableWidgetCellDisplayMode**](TableWidgetCellDisplayMode.md) |  | [optional] |
| **conditional_formats** | [**Array&lt;WidgetConditionalFormat&gt;**](WidgetConditionalFormat.md) | List of conditional formats. | [optional] |
| **formula** | **String** | String expression built from queries, formulas, and functions. |  |
| **limit** | [**WidgetFormulaLimit**](WidgetFormulaLimit.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::WidgetFormula.new(
  _alias: null,
  cell_display_mode: null,
  conditional_formats: null,
  formula: func(a) + b,
  limit: null
)
```

