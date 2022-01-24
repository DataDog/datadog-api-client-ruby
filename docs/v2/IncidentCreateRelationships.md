# DatadogAPIClient::V2::IncidentCreateRelationships

## Properties

| Name               | Type                                                            | Description | Notes |
| ------------------ | --------------------------------------------------------------- | ----------- | ----- |
| **commander_user** | [**NullableRelationshipToUser**](NullableRelationshipToUser.md) |             |       |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::IncidentCreateRelationships.new(
  commander_user: null
)
```
