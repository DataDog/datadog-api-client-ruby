# DatadogAPIClient::V2::IncidentNotificationHandle

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **display_name** | **String** | The name of the notified handle. | [optional] |
| **handle** | **String** | The email address used for the notification. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::IncidentNotificationHandle.new(
  display_name: Jane Doe,
  handle: @test.user@test.com
)
```

