# DatadogAPIClient::V1::ServiceSummaryWidgetDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**display_format** | [**WidgetServiceSummaryDisplayFormat**](WidgetServiceSummaryDisplayFormat.md) |  | [optional] 
**env** | **String** | APM environment. | 
**service** | **String** | APM service. | 
**show_breakdown** | **Boolean** | Whether to show the latency breakdown or not. | [optional] 
**show_distribution** | **Boolean** | Whether to show the latency distribution or not. | [optional] 
**show_errors** | **Boolean** | Whether to show the error metrics or not. | [optional] 
**show_hits** | **Boolean** | Whether to show the hits metrics or not. | [optional] 
**show_latency** | **Boolean** | Whether to show the latency metrics or not. | [optional] 
**show_resource_list** | **Boolean** | Whether to show the resource list or not. | [optional] 
**size_format** | [**WidgetSizeFormat**](WidgetSizeFormat.md) |  | [optional] 
**span_name** | **String** | APM span name. | 
**time** | [**WidgetTime**](WidgetTime.md) |  | [optional] 
**title** | **String** | Title of the widget. | [optional] 
**title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] 
**title_size** | **String** | Size of the title. | [optional] 
**type** | [**ServiceSummaryWidgetDefinitionType**](ServiceSummaryWidgetDefinitionType.md) |  | 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::ServiceSummaryWidgetDefinition.new(display_format: null,
                                 env: null,
                                 service: null,
                                 show_breakdown: null,
                                 show_distribution: null,
                                 show_errors: null,
                                 show_hits: null,
                                 show_latency: null,
                                 show_resource_list: null,
                                 size_format: null,
                                 span_name: null,
                                 time: null,
                                 title: null,
                                 title_align: null,
                                 title_size: null,
                                 type: null)
```


