# DatadogAPIClient::V1::GroupWidgetDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**layout_type** | [**WidgetLayoutType**](WidgetLayoutType.md) |  | 
**title** | **String** | Title of the widget. | [optional] 
**type** | [**GroupWidgetDefinitionType**](GroupWidgetDefinitionType.md) |  | 
**widgets** | [**Array&lt;Widget&gt;**](Widget.md) | List of widget groups. | 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::GroupWidgetDefinition.new(layout_type: null,
                                 title: null,
                                 type: null,
                                 widgets: [{&quot;definition&quot;:{&quot;requests&quot;:{&quot;fill&quot;:{&quot;q&quot;:&quot;system.cpu.user&quot;}},&quot;type&quot;:&quot;hostmap&quot;}}])
```


