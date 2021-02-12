# DatadogAPIClient::V1::GeomapWidgetDefinitionStyle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **palette** | **String** | The color palette to apply to the widget. |  |
| **palette_flip** | **Boolean** | Whether to flip the palette tones. |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::GeomapWidgetDefinitionStyle.new(
  palette: hostmap_blues,
  palette_flip: false
)
```

