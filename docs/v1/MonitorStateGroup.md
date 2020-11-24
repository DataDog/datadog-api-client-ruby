# DatadogAPIClient::V1::MonitorStateGroup

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_nodata_ts** | **Integer** | Latest timestamp the monitor was in NO_DATA state. | [optional] |
| **last_notified_ts** | **Integer** | Latest timestamp of the notification sent for this monitor group. | [optional] |
| **last_resolved_ts** | **Integer** | Latest timestamp the monitor group was resolved. | [optional] |
| **last_triggered_ts** | **Integer** | Latest timestamp the monitor group triggered. | [optional] |
| **name** | **String** | The name of the monitor. | [optional] |
| **status** | [**MonitorOverallStates**](MonitorOverallStates.md) |  | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::MonitorStateGroup.new(
  last_nodata_ts: null,
  last_notified_ts: null,
  last_resolved_ts: null,
  last_triggered_ts: null,
  name: null,
  status: null
)
```

