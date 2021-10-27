# DatadogAPIClient::V2::RoleUpdateData

## Properties

| Name           | Type                                                | Description     | Notes                        |
| -------------- | --------------------------------------------------- | --------------- | ---------------------------- |
| **attributes** | [**RoleUpdateAttributes**](RoleUpdateAttributes.md) |                 |                              |
| **id**         | **String**                                          | ID of the role. |                              |
| **type**       | [**RolesType**](RolesType.md)                       |                 | [default to &#39;roles&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::RoleUpdateData.new(
  attributes: null,
  id: 00000000-0000-0000-0000-000000000000,
  type: null
)
```
