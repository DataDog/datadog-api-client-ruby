# DatadogAPIClient::V1::User

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **access_role** | [**AccessRole**](AccessRole.md) |  | [optional][default to &#39;st&#39;] |
| **disabled** | **Boolean** | The new disabled status of the user. | [optional] |
| **email** | **String** | The new email of the user. | [optional] |
| **handle** | **String** | The user handle, must be a valid email. | [optional] |
| **icon** | **String** | Gravatar icon associated to the user. | [optional][readonly] |
| **name** | **String** | The name of the user. | [optional] |
| **verified** | **Boolean** | Whether or not the user logged in Datadog at least once. | [optional][readonly] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::User.new(
  access_role: null,
  disabled: false,
  email: test@datadoghq.com,
  handle: test@datadoghq.com,
  icon: /path/to/matching/gravatar/icon,
  name: test user,
  verified: true
)
```

