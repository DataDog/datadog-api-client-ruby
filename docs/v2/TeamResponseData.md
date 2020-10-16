# DatadogAPIClient::V2::TeamResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributes** | [**TeamResponseAttributes**](TeamResponseAttributes.md) |  | [optional] 
**id** | **String** | The team&#39;s ID. | [optional] 
**relationships** | [**TeamRelationships**](TeamRelationships.md) |  | [optional] 
**type** | [**TeamType**](TeamType.md) |  | [optional] [default to &#39;teams&#39;]

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::TeamResponseData.new(attributes: null,
                                 id: 00000000-0000-0000-0000-000000000000,
                                 relationships: null,
                                 type: null)
```


