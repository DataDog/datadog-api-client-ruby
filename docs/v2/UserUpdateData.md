# DatadogAPIClient::V2::UserUpdateData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**UserUpdateAttributes**](UserUpdateAttributes.md) |  |  |
| **id** | **String** | ID of the user. |  |
| **type** | [**UsersType**](UsersType.md) |  | [default to &#39;users&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::UserUpdateData.new(
  attributes: null,
  id: 00000000-0000-0000-0000-000000000000,
  type: null
)
```

