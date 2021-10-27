# DatadogAPIClient::V2::IncidentTeamCreateData

## Properties

| Name              | Type                                                                | Description | Notes                        |
| ----------------- | ------------------------------------------------------------------- | ----------- | ---------------------------- |
| **attributes**    | [**IncidentTeamCreateAttributes**](IncidentTeamCreateAttributes.md) |             | [optional]                   |
| **relationships** | [**IncidentTeamRelationships**](IncidentTeamRelationships.md)       |             | [optional]                   |
| **type**          | [**IncidentTeamType**](IncidentTeamType.md)                         |             | [default to &#39;teams&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::IncidentTeamCreateData.new(
  attributes: null,
  relationships: null,
  type: null
)
```
