# DatadogAPIClient::V2::IncidentTeamUpdateData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**IncidentTeamUpdateAttributes**](IncidentTeamUpdateAttributes.md) |  | [optional] |
| **id** | **String** | The incident team&#39;s ID. |  |
| **relationships** | [**IncidentTeamRelationships**](IncidentTeamRelationships.md) |  | [optional] |
| **type** | [**IncidentTeamType**](IncidentTeamType.md) |  | [default to &#39;teams&#39;] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::IncidentTeamUpdateData.new(
  attributes: null,
  id: 00000000-0000-0000-0000-000000000000,
  relationships: null,
  type: null
)
```

