# DatadogAPIClient::V1::LogsProcessor

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**grok** | [**LogsGrokParserRules**](LogsGrokParserRules.md) |  | 
**is_enabled** | **Boolean** | Whether or not the processor is enabled. | [optional] [default to false]
**name** | **String** | Name of the processor. | [optional] 
**samples** | **Array&lt;String&gt;** | List of sample logs to test this grok parser. | [optional] 
**source** | **String** | Source attribute used to perform the lookup. | 
**type** | [**LogsTraceRemapperType**](LogsTraceRemapperType.md) |  | 
**sources** | **Array&lt;String&gt;** | Array of source attributes. | 
**override_on_conflict** | **Boolean** | Override or not the target element if already set, | [optional] [default to false]
**preserve_source** | **Boolean** | Remove or preserve the remapped source element. | [optional] [default to false]
**source_type** | **String** | Defines if the sources are from log &#x60;attribute&#x60; or &#x60;tag&#x60;. | [optional] [default to &#39;attribute&#39;]
**target** | **String** | Name of the attribute that contains the corresponding value in the mapping list or the &#x60;default_lookup&#x60; if not found in the mapping list. | 
**target_format** | [**TargetFormatType**](TargetFormatType.md) |  | [optional] 
**target_type** | **String** | Defines if the final attribute or tag name is from log &#x60;attribute&#x60; or &#x60;tag&#x60;. | [optional] [default to &#39;attribute&#39;]
**normalize_ending_slashes** | **Boolean** | Normalize the ending slashes or not. | [optional] [default to false]
**is_encoded** | **Boolean** | Define if the source attribute is URL encoded or not. | [optional] [default to false]
**categories** | [**Array&lt;LogsCategoryProcessorCategories&gt;**](LogsCategoryProcessorCategories.md) | Array of filters to match or not a log and their corresponding &#x60;name&#x60;to assign a custom value to the log. | 
**expression** | **String** | Arithmetic operation between one or more log attributes. | 
**is_replace_missing** | **Boolean** | If true, it replaces all missing attributes of &#x60;template&#x60; by an empty string. If &#x60;false&#x60; (default), skips the operation for missing attributes. | [optional] [default to false]
**template** | **String** | A formula with one or more attributes and raw text. | 
**filter** | [**LogsFilter**](LogsFilter.md) |  | [optional] 
**processors** | [**Array&lt;LogsProcessor&gt;**](LogsProcessor.md) | Ordered list of processors in this pipeline. | [optional] 
**default_lookup** | **String** | Value to set the target attribute if the source value is not found in the list. | [optional] 
**lookup_table** | **Array&lt;String&gt;** | Mapping table of values for the source attribute and their associated target attribute values, formatted as &#x60;[\&quot;source_key1,target_value1\&quot;, \&quot;source_key2,target_value2\&quot;]&#x60; | 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::LogsProcessor.new(grok: null,
                                 is_enabled: null,
                                 name: null,
                                 samples: null,
                                 source: null,
                                 type: null,
                                 sources: null,
                                 override_on_conflict: null,
                                 preserve_source: null,
                                 source_type: null,
                                 target: null,
                                 target_format: null,
                                 target_type: null,
                                 normalize_ending_slashes: null,
                                 is_encoded: null,
                                 categories: [],
                                 expression: null,
                                 is_replace_missing: null,
                                 template: null,
                                 filter: null,
                                 processors: null,
                                 default_lookup: null,
                                 lookup_table: [])
```


