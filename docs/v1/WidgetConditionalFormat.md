# DatadogAPIClient::V1::WidgetConditionalFormat

## Properties

| Name                | Type                                        | Description                                                                 | Notes      |
| ------------------- | ------------------------------------------- | --------------------------------------------------------------------------- | ---------- |
| **comparator**      | [**WidgetComparator**](WidgetComparator.md) |                                                                             |            |
| **custom_bg_color** | **String**                                  | Color palette to apply to the background, same values available as palette. | [optional] |
| **custom_fg_color** | **String**                                  | Color palette to apply to the foreground, same values available as palette. | [optional] |
| **hide_value**      | **Boolean**                                 | True hides values.                                                          | [optional] |
| **image_url**       | **String**                                  | Displays an image as the background.                                        | [optional] |
| **metric**          | **String**                                  | Metric from the request to correlate this conditional format with.          | [optional] |
| **palette**         | [**WidgetPalette**](WidgetPalette.md)       |                                                                             |            |
| **timeframe**       | **String**                                  | Defines the displayed timeframe.                                            | [optional] |
| **value**           | **Float**                                   | Value for the comparator.                                                   |            |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::WidgetConditionalFormat.new(
  comparator: null,
  custom_bg_color: null,
  custom_fg_color: null,
  hide_value: null,
  image_url: null,
  metric: null,
  palette: null,
  timeframe: null,
  value: 0.0
)
```
