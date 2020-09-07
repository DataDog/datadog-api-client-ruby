# DatadogAPIClient::V1::AlertGraphWidgetDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**alert_id** | **String** | ID of the alert to use in the widget. | 
**time** | [**WidgetTime**](WidgetTime.md) |  | [optional] 
**title** | **String** | The title of the widget. | [optional] 
**title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] 
**title_size** | **String** | Size of the title. | [optional] 
**type** | [**AlertGraphWidgetDefinitionType**](AlertGraphWidgetDefinitionType.md) |  | 
**viz_type** | [**WidgetVizType**](WidgetVizType.md) |  | 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::AlertGraphWidgetDefinition.new(alert_id: null,
                                 time: null,
                                 title: null,
                                 title_align: null,
                                 title_size: null,
                                 type: null,
                                 viz_type: null)
```


