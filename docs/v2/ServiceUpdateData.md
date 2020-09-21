# DatadogAPIClient::V2::ServiceUpdateData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributes** | [**ServiceUpdateAttributes**](ServiceUpdateAttributes.md) |  | [optional] 
**id** | **String** | The service&#39;s ID. | 
**relationships** | [**ServiceRelationships**](ServiceRelationships.md) |  | [optional] 
**type** | [**ServiceType**](ServiceType.md) |  | 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::ServiceUpdateData.new(attributes: null,
                                 id: 00000000-0000-0000-0000-000000000000,
                                 relationships: null,
                                 type: null)
```


