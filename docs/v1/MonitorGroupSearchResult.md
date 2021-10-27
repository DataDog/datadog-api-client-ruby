# DatadogAPIClient::V1::MonitorGroupSearchResult

## Properties

| Name                  | Type                                                | Description                                              | Notes                |
| --------------------- | --------------------------------------------------- | -------------------------------------------------------- | -------------------- |
| **group**             | **String**                                          | The name of the group.                                   | [optional][readonly] |
| **group_tags**        | **Array&lt;String&gt;**                             | The list of tags of the monitor group.                   | [optional][readonly] |
| **last_nodata_ts**    | **Integer**                                         | Latest timestamp the monitor group was in NO_DATA state. | [optional][readonly] |
| **last_triggered_ts** | **Integer**                                         | Latest timestamp the monitor group triggered.            | [optional][readonly] |
| **monitor_id**        | **Integer**                                         | The ID of the monitor.                                   | [optional][readonly] |
| **monitor_name**      | **String**                                          | The name of the monitor.                                 | [optional][readonly] |
| **status**            | [**MonitorOverallStates**](MonitorOverallStates.md) |                                                          | [optional]           |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::MonitorGroupSearchResult.new(
  group: null,
  group_tags: null,
  last_nodata_ts: null,
  last_triggered_ts: null,
  monitor_id: null,
  monitor_name: null,
  status: null
)
```
