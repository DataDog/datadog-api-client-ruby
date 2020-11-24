# DatadogAPIClient::V2::UserResponseRelationships

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org** | [**RelationshipToOrganization**](RelationshipToOrganization.md) |  | [optional] |
| **other_orgs** | [**RelationshipToOrganizations**](RelationshipToOrganizations.md) |  | [optional] |
| **other_users** | [**RelationshipToUsers**](RelationshipToUsers.md) |  | [optional] |
| **roles** | [**RelationshipToRoles**](RelationshipToRoles.md) |  | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::UserResponseRelationships.new(
  org: null,
  other_orgs: null,
  other_users: null,
  roles: null
)
```

