# DatadogAPIClient::V2::IncidentTeamsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;IncidentTeamResponseData&gt;**](IncidentTeamResponseData.md) | An array of incident teams. |  |
| **included** | [**Array&lt;IncidentTeamIncludedItems&gt;**](IncidentTeamIncludedItems.md) | Included related resources which the user requested. | [optional][readonly] |
| **meta** | [**IncidentServicesResponseMeta**](IncidentServicesResponseMeta.md) |  | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::IncidentTeamsResponse.new(
  data: [{&quot;attributes&quot;:{&quot;name&quot;:&quot;team name&quot;},&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;type&quot;:&quot;teams&quot;}],
  included: null,
  meta: null
)
```

