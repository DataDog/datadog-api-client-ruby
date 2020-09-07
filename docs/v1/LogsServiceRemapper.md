# DatadogAPIClient::V1::LogsServiceRemapper

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_enabled** | **Boolean** | Whether or not the processor is enabled. | [optional] [default to false]
**name** | **String** | Name of the processor. | [optional] 
**sources** | **Array&lt;String&gt;** | Array of source attributes. | 
**type** | [**LogsServiceRemapperType**](LogsServiceRemapperType.md) |  | 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::LogsServiceRemapper.new(is_enabled: null,
                                 name: null,
                                 sources: [&quot;web&quot;,&quot;gateway&quot;],
                                 type: null)
```


