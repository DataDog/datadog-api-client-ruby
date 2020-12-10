# DatadogAPIClient::V1::HostMapWidgetDefinitionStyle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **fill_max** | **String** | Max value to use to color the map. | [optional] |
| **fill_min** | **String** | Min value to use to color the map. | [optional] |
| **palette** | **String** | Color palette to apply to the widget. | [optional] |
| **palette_flip** | **Boolean** | Whether to flip the palette tones. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::HostMapWidgetDefinitionStyle.new(
  fill_max: null,
  fill_min: null,
  palette: null,
  palette_flip: null
)
```

