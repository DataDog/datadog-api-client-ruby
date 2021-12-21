# DatadogAPIClient::V2::RoleClone

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**RoleCloneAttributes**](RoleCloneAttributes.md) |  |  |
| **type** | [**RolesType**](RolesType.md) |  | [default to &#39;roles&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::RoleClone.new(
  attributes: null,
  type: null
)
```

