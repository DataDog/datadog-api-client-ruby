# DatadogAPIClient::V2::IncidentTeamResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | [**IncidentTeamResponseData**](IncidentTeamResponseData.md) |  | 
**included** | [**Array&lt;IncidentTeamIncludedItems&gt;**](IncidentTeamIncludedItems.md) | Included objects from relationships. | [optional] [readonly] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::IncidentTeamResponse.new(data: null,
                                 included: null)
```


