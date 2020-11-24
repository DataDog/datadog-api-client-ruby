# DatadogAPIClient::V2::RelationshipToIncidentIntegrationMetadataData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | A unique identifier that represents the integration metadata. |  |
| **type** | [**IncidentIntegrationMetadataType**](IncidentIntegrationMetadataType.md) |  | [default to &#39;incident_integration_metadata&#39;] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::RelationshipToIncidentIntegrationMetadataData.new(
  id: 00000000-0000-0000-0000-000000000000,
  type: null
)
```

