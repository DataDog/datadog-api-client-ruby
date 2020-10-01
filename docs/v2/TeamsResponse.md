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

instance = DatadogAPIClient::V2::TeamsResponse.new(data: [{&quot;attributes&quot;:{&quot;name&quot;:&quot;team name&quot;},&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;type&quot;:&quot;teams&quot;}],
                                 included: null,
                                 meta: null)
```


