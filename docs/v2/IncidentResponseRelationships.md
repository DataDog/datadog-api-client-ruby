# DatadogAPIClient::V2::IncidentResponseRelationships

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commander_user** | [**RelationshipToUser**](RelationshipToUser.md) |  | [optional] |
| **created_by_user** | [**RelationshipToUser**](RelationshipToUser.md) |  | [optional] |
| **integrations** | [**RelationshipToIncidentIntegrationMetadatas**](RelationshipToIncidentIntegrationMetadatas.md) |  | [optional] |
| **last_modified_by_user** | [**RelationshipToUser**](RelationshipToUser.md) |  | [optional] |
| **postmortem** | [**RelationshipToIncidentPostmortem**](RelationshipToIncidentPostmortem.md) |  | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::IncidentResponseRelationships.new(
  commander_user: null,
  created_by_user: null,
  integrations: null,
  last_modified_by_user: null,
  postmortem: null
)
```

