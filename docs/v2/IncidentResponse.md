# DatadogAPIClient::V2::IncidentResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**IncidentResponseData**](IncidentResponseData.md) |  | 
**included** | [**Array&lt;IncidentResponseIncludedItem&gt;**](IncidentResponseIncludedItem.md) | Included related resources that the user requested. | [optional] [readonly] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::IncidentResponse.new(data: null,
                                 included: null)
```


