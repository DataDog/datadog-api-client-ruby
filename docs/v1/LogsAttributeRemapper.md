# DatadogAPIClient::V1::LogsAttributeRemapper

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_enabled** | **Boolean** | Whether or not the processor is enabled. | [optional] [default to false]
**name** | **String** | Name of the processor. | [optional] 
**override_on_conflict** | **Boolean** | Override or not the target element if already set, | [optional] [default to false]
**preserve_source** | **Boolean** | Remove or preserve the remapped source element. | [optional] [default to false]
**source_type** | **String** | Defines if the sources are from log &#x60;attribute&#x60; or &#x60;tag&#x60;. | [optional] [default to &#39;attribute&#39;]
**sources** | **Array&lt;String&gt;** | Array of source attributes. | 
**target** | **String** | Final attribute or tag name to remap the sources to. | 
**target_format** | [**TargetFormatType**](TargetFormatType.md) |  | [optional] 
**target_type** | **String** | Defines if the final attribute or tag name is from log &#x60;attribute&#x60; or &#x60;tag&#x60;. | [optional] [default to &#39;attribute&#39;]
**type** | [**LogsAttributeRemapperType**](LogsAttributeRemapperType.md) |  | [default to &#39;attribute-remapper&#39;]

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::LogsAttributeRemapper.new(is_enabled: null,
                                 name: null,
                                 override_on_conflict: null,
                                 preserve_source: null,
                                 source_type: null,
                                 sources: [&quot;web&quot;,&quot;gateway&quot;],
                                 target: operation_id,
                                 target_format: null,
                                 target_type: null,
                                 type: null)
```


