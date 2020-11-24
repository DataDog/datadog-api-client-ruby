# DatadogAPIClient::V2::Role

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**RoleAttributes**](RoleAttributes.md) |  | [optional] |
| **id** | **String** | ID of the role. | [optional] |
| **relationships** | [**RoleResponseRelationships**](RoleResponseRelationships.md) |  | [optional] |
| **type** | [**RolesType**](RolesType.md) |  | [default to &#39;roles&#39;] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::Role.new(
  attributes: null,
  id: null,
  relationships: null,
  type: null
)
```

