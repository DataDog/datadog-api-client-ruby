# DatadogAPIClient::V1::AlertValueWidgetDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alert_id** | **String** | ID of the alert to use in the widget. | 
**precision** | **Integer** | Number of decimal to show. If not defined, will use the raw value. | [optional] 
**text_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] 
**title** | **String** | Title of the widget. | [optional] 
**title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] 
**title_size** | **String** | Size of value in the widget. | [optional] 
**type** | [**AlertValueWidgetDefinitionType**](AlertValueWidgetDefinitionType.md) |  | [default to &#39;alert_value&#39;]
**unit** | **String** | Unit to display with the value. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::AlertValueWidgetDefinition.new(alert_id: null,
                                 precision: null,
                                 text_align: null,
                                 title: null,
                                 title_align: null,
                                 title_size: null,
                                 type: null,
                                 unit: null)
```


