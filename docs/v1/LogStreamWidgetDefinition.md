# DatadogAPIClient::V1::LogStreamWidgetDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**columns** | **Array&lt;String&gt;** | Which columns to display on the widget. | [optional] 
**indexes** | **Array&lt;String&gt;** | An array of index names to query in the stream. Use [] to query all indexes at once. | [optional] 
**logset** | **String** | ID of the log set to use. | [optional] 
**message_display** | [**WidgetMessageDisplay**](WidgetMessageDisplay.md) |  | [optional] 
**query** | **String** | Query to filter the log stream with. | [optional] 
**show_date_column** | **Boolean** | Whether to show the date column or not | [optional] 
**show_message_column** | **Boolean** | Whether to show the message column or not | [optional] 
**sort** | [**WidgetFieldSort**](WidgetFieldSort.md) |  | [optional] 
**time** | [**WidgetTime**](WidgetTime.md) |  | [optional] 
**title** | **String** | Title of the widget. | [optional] 
**title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] 
**title_size** | **String** | Size of the title. | [optional] 
**type** | [**LogStreamWidgetDefinitionType**](LogStreamWidgetDefinitionType.md) |  | [default to &#39;log_stream&#39;]

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::LogStreamWidgetDefinition.new(columns: null,
                                 indexes: [&quot;days-3&quot;,&quot;days-7&quot;],
                                 logset: null,
                                 message_display: null,
                                 query: null,
                                 show_date_column: null,
                                 show_message_column: null,
                                 sort: null,
                                 time: null,
                                 title: null,
                                 title_align: null,
                                 title_size: null,
                                 type: null)
```


