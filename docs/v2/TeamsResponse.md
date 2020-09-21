# DatadogAPIClient::V2::TeamsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**Array&lt;TeamResponseData&gt;**](TeamResponseData.md) | An array of teams. | 
**included** | [**Array&lt;TeamIncludedItems&gt;**](TeamIncludedItems.md) | Included related resources which the user requested. | [optional] [readonly] 
**meta** | [**ServicesResponseMeta**](ServicesResponseMeta.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::TeamsResponse.new(data: null,
                                 included: null,
                                 meta: null)
```


