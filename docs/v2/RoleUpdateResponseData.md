# DatadogAPIClient::V2::RoleUpdateResponseData

## Properties

| Name              | Type                                                          | Description     | Notes                        |
| ----------------- | ------------------------------------------------------------- | --------------- | ---------------------------- |
| **attributes**    | [**RoleUpdateAttributes**](RoleUpdateAttributes.md)           |                 | [optional]                   |
| **id**            | **String**                                                    | ID of the role. | [optional]                   |
| **relationships** | [**RoleResponseRelationships**](RoleResponseRelationships.md) |                 | [optional]                   |
| **type**          | [**RolesType**](RolesType.md)                                 |                 | [default to &#39;roles&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::RoleUpdateResponseData.new(
  attributes: null,
  id: null,
  relationships: null,
  type: null
)
```
