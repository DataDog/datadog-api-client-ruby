# DatadogAPIClient::V2::RoleCreateData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**RoleCreateAttributes**](RoleCreateAttributes.md) |  |  |
| **relationships** | [**RoleRelationships**](RoleRelationships.md) |  | [optional] |
| **type** | [**RolesType**](RolesType.md) |  | [optional][default to &#39;roles&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::RoleCreateData.new(
  attributes: null,
  relationships: null,
  type: null
)
```

