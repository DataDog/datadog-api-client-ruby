# DatadogAPIClient::V1::WidgetRequestStyle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **line_type** | [**WidgetLineType**](WidgetLineType.md) |  | [optional] |
| **line_width** | [**WidgetLineWidth**](WidgetLineWidth.md) |  | [optional] |
| **palette** | **String** | Color palette to apply to the widget. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::WidgetRequestStyle.new(
  line_type: null,
  line_width: null,
  palette: null
)
```

