# DatadogAPIClient::V2::IncidentUpdateData

## Properties

| Name              | Type                                                              | Description        | Notes                            |
| ----------------- | ----------------------------------------------------------------- | ------------------ | -------------------------------- |
| **attributes**    | [**IncidentUpdateAttributes**](IncidentUpdateAttributes.md)       |                    | [optional]                       |
| **id**            | **String**                                                        | The team&#39;s ID. |                                  |
| **relationships** | [**IncidentUpdateRelationships**](IncidentUpdateRelationships.md) |                    | [optional]                       |
| **type**          | [**IncidentType**](IncidentType.md)                               |                    | [default to &#39;incidents&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::IncidentUpdateData.new(
  attributes: null,
  id: 00000000-0000-0000-0000-000000000000,
  relationships: null,
  type: null
)
```
