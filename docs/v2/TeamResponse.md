# DatadogAPIClient::V2::TeamResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**TeamResponseData**](TeamResponseData.md) |  | 
**included** | [**Array&lt;TeamIncludedItems&gt;**](TeamIncludedItems.md) | Included objects from relationships. | [optional] [readonly] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::TeamResponse.new(data: null,
                                 included: null)
```


