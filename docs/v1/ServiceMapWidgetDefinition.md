# DatadogAPIClient::V1::ServiceMapWidgetDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**custom_links** | [**Array&lt;WidgetCustomLink&gt;**](WidgetCustomLink.md) | List of custom links. | [optional] 
**filters** | **Array&lt;String&gt;** | Your environment and primary tag (or * if enabled for your account). | 
**service** | **String** | The ID of the service you want to map. | 
**title** | **String** | The title of your widget. | [optional] 
**title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] 
**title_size** | **String** | Size of the title. | [optional] 
**type** | [**ServiceMapWidgetDefinitionType**](ServiceMapWidgetDefinitionType.md) |  | [default to &#39;servicemap&#39;]

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::ServiceMapWidgetDefinition.new(custom_links: null,
                                 filters: [&quot;*&quot;],
                                 service: null,
                                 title: null,
                                 title_align: null,
                                 title_size: null,
                                 type: null)
```


