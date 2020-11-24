# DatadogAPIClient::V2::RoleRelationships

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **permissions** | [**RelationshipToPermissions**](RelationshipToPermissions.md) |  | [optional] |
| **users** | [**RelationshipToUsers**](RelationshipToUsers.md) |  | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::RoleRelationships.new(
  permissions: null,
  users: null
)
```

