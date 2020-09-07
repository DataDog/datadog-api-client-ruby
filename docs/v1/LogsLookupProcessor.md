# DatadogAPIClient::V1::LogsLookupProcessor

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**default_lookup** | **String** | Value to set the target attribute if the source value is not found in the list. | [optional] 
**is_enabled** | **Boolean** | Whether or not the processor is enabled. | [optional] [default to false]
**lookup_table** | **Array&lt;String&gt;** | Mapping table of values for the source attribute and their associated target attribute values, formatted as &#x60;[\&quot;source_key1,target_value1\&quot;, \&quot;source_key2,target_value2\&quot;]&#x60; | 
**name** | **String** | Name of the processor. | [optional] 
**source** | **String** | Source attribute used to perform the lookup. | 
**target** | **String** | Name of the attribute that contains the corresponding value in the mapping list or the &#x60;default_lookup&#x60; if not found in the mapping list. | 
**type** | [**LogsLookupProcessorType**](LogsLookupProcessorType.md) |  | 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::LogsLookupProcessor.new(default_lookup: null,
                                 is_enabled: null,
                                 lookup_table: [],
                                 name: null,
                                 source: null,
                                 target: null,
                                 type: null)
```


