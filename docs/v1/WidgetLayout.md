# DatadogAPIClient::V1::WidgetLayout

## Properties

| Name                | Type        | Description                                                                                                                                                                                                                     | Notes      |
| ------------------- | ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **height**          | **Integer** | The height of the widget. Should be a non-negative integer.                                                                                                                                                                     |            |
| **is_column_break** | **Boolean** | Whether the widget should be the first one on the second column in high density or not. **Note**: Only for the **new dashboard layout** and only one widget in the dashboard should have this property set to &#x60;true&#x60;. | [optional] |
| **width**           | **Integer** | The width of the widget. Should be a non-negative integer.                                                                                                                                                                      |            |
| **x**               | **Integer** | The position of the widget on the x (horizontal) axis. Should be a non-negative integer.                                                                                                                                        |            |
| **y**               | **Integer** | The position of the widget on the y (vertical) axis. Should be a non-negative integer.                                                                                                                                          |            |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::WidgetLayout.new(
  height: 0,
  is_column_break: null,
  width: 0,
  x: 0,
  y: 0
)
```
