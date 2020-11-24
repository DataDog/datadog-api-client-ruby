# DatadogAPIClient::V1::WidgetLayout

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **height** | **Integer** | The height of the widget. Should be a non-negative integer. |  |
| **width** | **Integer** | The width of the widget. Should be a non-negative integer. |  |
| **x** | **Integer** | The position of the widget on the x (horizontal) axis. Should be a non-negative integer. |  |
| **y** | **Integer** | The position of the widget on the y (vertical) axis. Should be a non-negative integer. |  |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::WidgetLayout.new(
  height: 0,
  width: 0,
  x: 0,
  y: 0
)
```

