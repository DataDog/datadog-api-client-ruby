# DatadogAPIClient::V1::WidgetMarker

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**display_type** | **String** | Combination of:   - A severity error, warning, ok, or info   - A line type: dashed, solid, or bold  | [optional] 
**label** | **String** | Label to display over the marker. | [optional] 
**time** | **String** | Timestamp for the widget. | [optional] 
**value** | **String** | Value to apply. Can be a single value y &#x3D; 15 or a range of values 0 &lt; y &lt; 10. | 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::WidgetMarker.new(display_type: error dashed,
                                 label: Error threshold,
                                 time: null,
                                 value: y &#x3D; 15)
```


