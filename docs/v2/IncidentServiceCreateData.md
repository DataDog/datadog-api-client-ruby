# DatadogAPIClient::V2::IncidentServiceCreateData

## Properties

| Name              | Type                                                                      | Description | Notes                           |
| ----------------- | ------------------------------------------------------------------------- | ----------- | ------------------------------- |
| **attributes**    | [**IncidentServiceCreateAttributes**](IncidentServiceCreateAttributes.md) |             | [optional]                      |
| **relationships** | [**IncidentServiceRelationships**](IncidentServiceRelationships.md)       |             | [optional]                      |
| **type**          | [**IncidentServiceType**](IncidentServiceType.md)                         |             | [default to &#39;services&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::IncidentServiceCreateData.new(
  attributes: null,
  relationships: null,
  type: null
)
```
