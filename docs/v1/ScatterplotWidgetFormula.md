# DatadogAPIClient::V1::ScatterplotWidgetFormula

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_alias** | **String** | Expression alias. | [optional] |
| **dimension** | [**ScatterplotDimension**](ScatterplotDimension.md) |  |  |
| **formula** | **String** | String expression built from queries, formulas, and functions. |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ScatterplotWidgetFormula.new(
  _alias: my-query,
  dimension: null,
  formula: func(a) + b
)
```

