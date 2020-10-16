# DatadogAPIClient::V1::ToplistWidgetDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**custom_links** | [**Array&lt;WidgetCustomLink&gt;**](WidgetCustomLink.md) | List of custom links. | [optional] 
**requests** | [**Array&lt;ToplistWidgetRequest&gt;**](ToplistWidgetRequest.md) | List of top list widget requests. | 
**time** | [**WidgetTime**](WidgetTime.md) |  | [optional] 
**title** | **String** | Title of your widget. | [optional] 
**title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] 
**title_size** | **String** | Size of the title. | [optional] 
**type** | [**ToplistWidgetDefinitionType**](ToplistWidgetDefinitionType.md) |  | [default to &#39;toplist&#39;]

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::ToplistWidgetDefinition.new(custom_links: null,
                                 requests: [{&quot;q&quot;:&quot;system.load.1&quot;}],
                                 time: null,
                                 title: null,
                                 title_align: null,
                                 title_size: null,
                                 type: null)
```


