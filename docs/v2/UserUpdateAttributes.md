# DatadogAPIClient::V2::UserUpdateAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **disabled** | **Boolean** | If the user is enabled or disabled. | [optional] |
| **email** | **String** | The email of the user. | [optional] |
| **name** | **String** | The name of the user. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::UserUpdateAttributes.new(
  disabled: null,
  email: null,
  name: null
)
```

