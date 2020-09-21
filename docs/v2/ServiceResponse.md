# DatadogAPIClient::V2::ServiceResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**ServiceResponseData**](ServiceResponseData.md) |  | 
**included** | [**Array&lt;ServiceIncludedItems&gt;**](ServiceIncludedItems.md) | Included objects from relationships. | [optional] [readonly] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::ServiceResponse.new(data: null,
                                 included: null)
```


