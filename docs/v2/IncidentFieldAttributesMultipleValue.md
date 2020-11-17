# DatadogAPIClient::V2::IncidentFieldAttributesMultipleValue

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | [**IncidentFieldAttributesValueType**](IncidentFieldAttributesValueType.md) |  | [optional] [default to &#39;multiselect&#39;]
**value** | **Array&lt;String&gt;** | The multiple values selected for this field. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::IncidentFieldAttributesMultipleValue.new(type: null,
                                 value: [&quot;1.0&quot;,&quot;1.1&quot;])
```


