# DatadogAPIClient::V2::RelationshipToOrganizationData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the organization. |  |
| **type** | [**OrganizationsType**](OrganizationsType.md) |  | [default to &#39;orgs&#39;] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::RelationshipToOrganizationData.new(
  id: 00000000-0000-0000-0000-000000000000,
  type: null
)
```

