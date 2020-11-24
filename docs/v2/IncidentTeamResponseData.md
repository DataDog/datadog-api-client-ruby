# DatadogAPIClient::V2::IncidentTeamResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**IncidentTeamResponseAttributes**](IncidentTeamResponseAttributes.md) |  | [optional] |
| **id** | **String** | The incident team&#39;s ID. | [optional] |
| **relationships** | [**IncidentTeamRelationships**](IncidentTeamRelationships.md) |  | [optional] |
| **type** | [**IncidentTeamType**](IncidentTeamType.md) |  | [optional][default to &#39;teams&#39;] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::IncidentTeamResponseData.new(
  attributes: null,
  id: 00000000-0000-0000-0000-000000000000,
  relationships: null,
  type: null
)
```

