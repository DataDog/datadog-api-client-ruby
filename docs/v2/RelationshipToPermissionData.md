# DatadogAPIClient::V2::RelationshipToPermissionData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the permission. | [optional] |
| **type** | [**PermissionsType**](PermissionsType.md) |  | [optional][default to &#39;permissions&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::RelationshipToPermissionData.new(
  id: null,
  type: null
)
```

