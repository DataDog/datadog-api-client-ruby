# DatadogAPIClient::V2::IncidentFieldAttributesSingleValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**IncidentFieldAttributesSingleValueType**](IncidentFieldAttributesSingleValueType.md) |  | [optional][default to &#39;dropdown&#39;] |
| **value** | **String** | The single value selected for this field. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::IncidentFieldAttributesSingleValue.new(
  type: null,
  value: SEV-1
)
```

