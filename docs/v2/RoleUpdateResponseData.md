# DatadogAPIClient::V2::RoleUpdateResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributes** | [**RoleUpdateAttributes**](RoleUpdateAttributes.md) |  | [optional] 
**id** | **String** | ID of the role. | [optional] 
**relationships** | [**RoleResponseRelationships**](RoleResponseRelationships.md) |  | [optional] 
**type** | [**RolesType**](RolesType.md) |  | 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::RoleUpdateResponseData.new(attributes: null,
                                 id: null,
                                 relationships: null,
                                 type: null)
```


