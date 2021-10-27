# DatadogAPIClient::V2::Permission

## Properties

| Name           | Type                                                | Description           | Notes                              |
| -------------- | --------------------------------------------------- | --------------------- | ---------------------------------- |
| **attributes** | [**PermissionAttributes**](PermissionAttributes.md) |                       | [optional]                         |
| **id**         | **String**                                          | ID of the permission. | [optional]                         |
| **type**       | [**PermissionsType**](PermissionsType.md)           |                       | [default to &#39;permissions&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::Permission.new(
  attributes: null,
  id: null,
  type: null
)
```
