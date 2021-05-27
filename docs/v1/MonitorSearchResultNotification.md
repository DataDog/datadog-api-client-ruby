# DatadogAPIClient::V1::MonitorSearchResultNotification

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **handle** | **String** | The email address that received the notification. | [optional][readonly] |
| **name** | **String** | The username receiving the notification | [optional][readonly] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::MonitorSearchResultNotification.new(
  handle: null,
  name: null
)
```

