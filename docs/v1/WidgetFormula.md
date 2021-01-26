# DatadogAPIClient::V1::WidgetFormula

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_alias** | **String** | Expression alias. | [optional] |
| **formula** | **String** | String expression built from queries, formulas, and functions. |  |
| **limit** | [**WidgetFormulaLimit**](WidgetFormulaLimit.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::WidgetFormula.new(
  _alias: null,
  formula: func(a) + b,
  limit: null
)
```

