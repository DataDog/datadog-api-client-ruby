# DatadogAPIClient::V2::RelationshipToIncidentIntegrationMetadatas

## Properties

| Name     | Type                                                                                                               | Description                                 | Notes |
| -------- | ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------- | ----- |
| **data** | [**Array&lt;RelationshipToIncidentIntegrationMetadataData&gt;**](RelationshipToIncidentIntegrationMetadataData.md) | The integration metadata relationship array |       |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::RelationshipToIncidentIntegrationMetadatas.new(
  data: [{&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;type&quot;:&quot;incident_integrations&quot;},{&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;type&quot;:&quot;incident_integrations&quot;}]
)
```
