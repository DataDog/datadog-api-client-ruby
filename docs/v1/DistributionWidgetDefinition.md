# DatadogAPIClient::V1::DistributionWidgetDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**legend_size** | **String** | Available legend sizes for a widget. Should be one of \&quot;0\&quot;, \&quot;2\&quot;, \&quot;4\&quot;, \&quot;8\&quot;, \&quot;16\&quot;, or \&quot;auto\&quot;. | [optional] 
**requests** | [**Array&lt;DistributionWidgetRequest&gt;**](DistributionWidgetRequest.md) | Array of one request object to display in the widget.  See the dedicated [Request JSON schema documentation](https://docs.datadoghq.com/dashboards/graphing_json/request_json)  to learn how to build the &#x60;REQUEST_SCHEMA&#x60;. | 
**show_legend** | **Boolean** | Whether or not to display the legend on this widget. | [optional] 
**time** | [**WidgetTime**](WidgetTime.md) |  | [optional] 
**title** | **String** | Title of the widget. | [optional] 
**title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] 
**title_size** | **String** | Size of the title. | [optional] 
**type** | [**DistributionWidgetDefinitionType**](DistributionWidgetDefinitionType.md) |  | [default to &#39;distribution&#39;]

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::DistributionWidgetDefinition.new(legend_size: null,
                                 requests: [{&quot;q&quot;:&quot;host:X tags:Y&quot;}],
                                 show_legend: null,
                                 time: null,
                                 title: null,
                                 title_align: null,
                                 title_size: null,
                                 type: null)
```


