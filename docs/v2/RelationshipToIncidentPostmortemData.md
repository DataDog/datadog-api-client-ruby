# DatadogAPIClient::V2::RelationshipToIncidentPostmortemData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A unique identifier that represents the postmortem. |  |
| **type** | [**IncidentPostmortemType**](IncidentPostmortemType.md) |  | [default to &#39;incident_postmortems&#39;] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::RelationshipToIncidentPostmortemData.new(
  id: 00000000-0000-0000-0000-000000000000,
  type: null
)
```

