# DatadogAPIClient::V2::TeamUpdateData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributes** | [**TeamUpdateAttributes**](TeamUpdateAttributes.md) |  | [optional] 
**id** | **String** | The team&#39;s ID. | 
**relationships** | [**TeamRelationships**](TeamRelationships.md) |  | [optional] 
**type** | [**TeamType**](TeamType.md) |  | 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::TeamUpdateData.new(attributes: null,
                                 id: 00000000-0000-0000-0000-000000000000,
                                 relationships: null,
                                 type: null)
```


