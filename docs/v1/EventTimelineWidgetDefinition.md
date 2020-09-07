# DatadogAPIClient::V1::EventTimelineWidgetDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**query** | **String** | Query to filter the event timeline with. | 
**tags_execution** | **String** | The execution method for multi-value filters. Can be either and or or. | [optional] 
**time** | [**WidgetTime**](WidgetTime.md) |  | [optional] 
**title** | **String** | Title of the widget. | [optional] 
**title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] 
**title_size** | **String** | Size of the title. | [optional] 
**type** | [**EventTimelineWidgetDefinitionType**](EventTimelineWidgetDefinitionType.md) |  | 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::EventTimelineWidgetDefinition.new(query: null,
                                 tags_execution: null,
                                 time: null,
                                 title: null,
                                 title_align: null,
                                 title_size: null,
                                 type: null)
```


