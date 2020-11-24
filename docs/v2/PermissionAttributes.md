# DatadogAPIClient::V2::PermissionAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **Time** | Creation time of the permission. | [optional] |
| **description** | **String** | Description of the permission. | [optional] |
| **display_name** | **String** | Displayed name for the permission. | [optional] |
| **display_type** | **String** | Display type. | [optional] |
| **group_name** | **String** | Name of the permission group. | [optional] |
| **name** | **String** | Name of the permission. | [optional] |
| **restricted** | **Boolean** | Whether or not the permission is restricted. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::PermissionAttributes.new(
  created: null,
  description: null,
  display_name: null,
  display_type: null,
  group_name: null,
  name: null,
  restricted: null
)
```

