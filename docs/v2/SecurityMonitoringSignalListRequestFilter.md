# DatadogAPIClient::V2::SecurityMonitoringSignalListRequestFilter

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **from** | **Time** | The minimum timestamp for requested security signals. | [optional] |
| **query** | **String** | Search query for listing security signals. | [optional] |
| **to** | **Time** | The maximum timestamp for requested security signals. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityMonitoringSignalListRequestFilter.new(
  from: 2019-01-02T09:42:36.320Z,
  query: security:attack status:high,
  to: 2019-01-03T09:42:36.320Z
)
```

