# DatadogAPIClient::V2::ServiceAccountCreateAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The email of the user. |  |
| **name** | **String** | The name of the user. | [optional] |
| **service_account** | **Boolean** | Whether the user is a service account. Must be true. |  |
| **title** | **String** | The title of the user. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::ServiceAccountCreateAttributes.new(
  email: jane.doe@example.com,
  name: null,
  service_account: true,
  title: null
)
```

