# DatadogAPIClient::V2::UserCreateAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The email of the user. |  |
| **name** | **String** | The name of the user. | [optional] |
| **title** | **String** | The title of the user. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::UserCreateAttributes.new(
  email: joe.doe@example.com,
  name: null,
  title: null
)
```

