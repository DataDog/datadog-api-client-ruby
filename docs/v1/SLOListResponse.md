# DatadogAPIClient::V1::SLOListResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Array&lt;ServiceLevelObjective&gt;**](ServiceLevelObjective.md) | An array of service level objective objects. | [optional] 
**errors** | **Array&lt;String&gt;** | An array of error messages. Each endpoint documents how/whether this field is used. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::SLOListResponse.new(data: null,
                                 errors: null)
```


