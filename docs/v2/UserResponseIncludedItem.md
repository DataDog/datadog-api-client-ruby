# DatadogAPIClient::V2::UserResponseIncludedItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**attributes** | [**RoleAttributes**](RoleAttributes.md) |  | [optional] 
**id** | **String** | ID of the role. | [optional] 
**type** | [**RolesType**](RolesType.md) |  | 
**relationships** | [**RoleResponseRelationships**](RoleResponseRelationships.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::UserResponseIncludedItem.new(attributes: null,
                                 id: null,
                                 type: null,
                                 relationships: null)
```


