# DatadogAPIClient::V1::LogsCategoryProcessor

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**categories** | [**Array&lt;LogsCategoryProcessorCategories&gt;**](LogsCategoryProcessorCategories.md) | Array of filters to match or not a log and their corresponding &#x60;name&#x60;to assign a custom value to the log. | 
**is_enabled** | **Boolean** | Whether or not the processor is enabled. | [optional] [default to false]
**name** | **String** | Name of the processor. | [optional] 
**target** | **String** | Name of the target attribute which value is defined by the matching category. | 
**type** | [**LogsCategoryProcessorType**](LogsCategoryProcessorType.md) |  | 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::LogsCategoryProcessor.new(categories: [],
                                 is_enabled: null,
                                 name: null,
                                 target: null,
                                 type: null)
```


