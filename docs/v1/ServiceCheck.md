# DatadogAPIClient::V1::ServiceCheck

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check** | **String** | The check. |  |
| **host_name** | **String** | The host name correlated with the check. |  |
| **message** | **String** | Message containing check status. | [optional] |
| **status** | [**ServiceCheckStatus**](ServiceCheckStatus.md) |  |  |
| **tags** | **Array&lt;String&gt;** | Tags related to a check. |  |
| **timestamp** | **Integer** | Time of check. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ServiceCheck.new(
  check: app.ok,
  host_name: app.host1,
  message: app is running,
  status: null,
  tags: [&quot;environment:test&quot;],
  timestamp: null
)
```

