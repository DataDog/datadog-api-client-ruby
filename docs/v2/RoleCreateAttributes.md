# DatadogAPIClient::V2::RoleCreateAttributes

## Properties

| Name                | Type       | Description                     | Notes                |
| ------------------- | ---------- | ------------------------------- | -------------------- |
| **clone_from_uuid** | **String** | UUID of the role to clone from. | [optional]           |
| **created_at**      | **Time**   | Creation time of the role.      | [optional][readonly] |
| **modified_at**     | **Time**   | Time of last role modification. | [optional][readonly] |
| **name**            | **String** | Name of the role.               |                      |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::RoleCreateAttributes.new(
  clone_from_uuid: null,
  created_at: null,
  modified_at: null,
  name: developers
)
```
