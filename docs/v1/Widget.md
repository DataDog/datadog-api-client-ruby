# DatadogAPIClient::V1::Widget

## Properties

| Name           | Type                                        | Description       | Notes      |
| -------------- | ------------------------------------------- | ----------------- | ---------- |
| **definition** | [**WidgetDefinition**](WidgetDefinition.md) |                   |            |
| **id**         | **Integer**                                 | ID of the widget. | [optional] |
| **layout**     | [**WidgetLayout**](WidgetLayout.md)         |                   | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::Widget.new(
  definition: null,
  id: null,
  layout: null
)
```
