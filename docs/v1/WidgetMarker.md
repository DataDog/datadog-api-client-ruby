# DatadogAPIClient::V1::WidgetMarker

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_type** | **String** | Combination of:   - A severity error, warning, ok, or info   - A line type: dashed, solid, or bold In this case of a Distribution widget, this can be set to be &#x60;x_axis_percentile&#x60;.  | [optional] |
| **label** | **String** | Label to display over the marker. | [optional] |
| **time** | **String** | Timestamp for the widget. | [optional] |
| **value** | **String** | Value to apply. Can be a single value y &#x3D; 15 or a range of values 0 &lt; y &lt; 10. |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::WidgetMarker.new(
  display_type: error dashed,
  label: Error threshold,
  time: null,
  value: y &#x3D; 15
)
```

