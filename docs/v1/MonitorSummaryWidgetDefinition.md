# DatadogAPIClient::V1::MonitorSummaryWidgetDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**color_preference** | [**WidgetColorPreference**](WidgetColorPreference.md) |  | [optional] 
**count** | **Integer** | The number of monitors to display. | [optional] 
**display_format** | [**WidgetMonitorSummaryDisplayFormat**](WidgetMonitorSummaryDisplayFormat.md) |  | [optional] 
**hide_zero_counts** | **Boolean** | Whether to show counts of 0 or not. | [optional] 
**query** | **String** | Query to filter the monitors with. | 
**show_last_triggered** | **Boolean** | Whether to show the time that has elapsed since the monitor/group triggered. | [optional] 
**sort** | [**WidgetMonitorSummarySort**](WidgetMonitorSummarySort.md) |  | [optional] 
**start** | **Integer** | The start of the list. Typically 0. | [optional] 
**summary_type** | [**WidgetSummaryType**](WidgetSummaryType.md) |  | [optional] 
**title** | **String** | Title of the widget. | [optional] 
**title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] 
**title_size** | **String** | Size of the title. | [optional] 
**type** | [**MonitorSummaryWidgetDefinitionType**](MonitorSummaryWidgetDefinitionType.md) |  | [default to &#39;manage_status&#39;]

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::MonitorSummaryWidgetDefinition.new(color_preference: null,
                                 count: null,
                                 display_format: null,
                                 hide_zero_counts: null,
                                 query: null,
                                 show_last_triggered: null,
                                 sort: null,
                                 start: null,
                                 summary_type: null,
                                 title: null,
                                 title_align: null,
                                 title_size: null,
                                 type: null)
```


