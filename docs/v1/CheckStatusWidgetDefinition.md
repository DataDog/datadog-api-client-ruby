# DatadogAPIClient::V1::CheckStatusWidgetDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**check** | **String** | Name of the check to use in the widget. | 
**group** | **String** | Group reporting a single check. | [optional] 
**group_by** | **Array&lt;String&gt;** | List of tag prefixes to group by in the case of a cluster check. | [optional] 
**grouping** | [**WidgetGrouping**](WidgetGrouping.md) |  | 
**tags** | **Array&lt;String&gt;** | List of tags used to filter the groups reporting a cluster check. | [optional] 
**time** | [**WidgetTime**](WidgetTime.md) |  | [optional] 
**title** | **String** | Title of the widget. | [optional] 
**title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] 
**title_size** | **String** | Size of the title. | [optional] 
**type** | [**CheckStatusWidgetDefinitionType**](CheckStatusWidgetDefinitionType.md) |  | [default to &#39;check_status&#39;]

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::CheckStatusWidgetDefinition.new(check: null,
                                 group: null,
                                 group_by: null,
                                 grouping: null,
                                 tags: null,
                                 time: null,
                                 title: null,
                                 title_align: null,
                                 title_size: null,
                                 type: null)
```


