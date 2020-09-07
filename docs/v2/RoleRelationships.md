# DatadogAPIClient::V2::RoleRelationships

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**permissions** | [**RelationshipToPermissions**](RelationshipToPermissions.md) |  | [optional] 
**users** | [**RelationshipToUsers**](RelationshipToUsers.md) |  | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::RoleRelationships.new(permissions: null,
                                 users: null)
```


