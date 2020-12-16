# DatadogAPIClient::V2::IncidentCreateData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**IncidentCreateAttributes**](IncidentCreateAttributes.md) |  |  |
| **relationships** | [**IncidentCreateRelationships**](IncidentCreateRelationships.md) |  | [optional] |
| **type** | [**IncidentType**](IncidentType.md) |  | [default to &#39;incidents&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::IncidentCreateData.new(
  attributes: null,
  relationships: null,
  type: null
)
```

