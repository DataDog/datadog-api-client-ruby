# DatadogAPIClient::V2::ServicesResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Array&lt;ServiceResponseData&gt;**](ServiceResponseData.md) | An array of services. | 
**included** | [**Array&lt;ServiceIncludedItems&gt;**](ServiceIncludedItems.md) | Included related resources which the user requested. | [optional] [readonly] 
**meta** | [**ServicesResponseMeta**](ServicesResponseMeta.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::ServicesResponse.new(data: null,
                                 included: null,
                                 meta: null)
```


