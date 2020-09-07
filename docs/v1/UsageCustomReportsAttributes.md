# DatadogAPIClient::V1::UsageCustomReportsAttributes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**computed_on** | **String** | The date the specified custom report was computed. | [optional] 
**end_date** | **String** | The ending date of custom report. | [optional] 
**size** | **Integer** | size | [optional] 
**start_date** | **String** | The starting date of custom report. | [optional] 
**tags** | **Array&lt;String&gt;** | A list of tags to apply to custom reports. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::UsageCustomReportsAttributes.new(computed_on: null,
                                 end_date: null,
                                 size: null,
                                 start_date: null,
                                 tags: null)
```


