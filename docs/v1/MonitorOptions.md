# DatadogAPIClient::V1::MonitorOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aggregation** | [**MonitorOptionsAggregation**](MonitorOptionsAggregation.md) |  | [optional] |
| **device_ids** | [**Array&lt;MonitorDeviceID&gt;**](MonitorDeviceID.md) | IDs of the device the Synthetics monitor is running on. | [optional][readonly] |
| **enable_logs_sample** | **Boolean** | Whether or not to send a log sample when the log monitor triggers. | [optional] |
| **escalation_message** | **String** | We recommend using the [is_renotify](https://docs.datadoghq.com/monitors/notifications/?tab&#x3D;is_alert#renotify), block in the original message instead. A message to include with a re-notification. Supports the &#x60;@username&#x60; notification we allow elsewhere. Not applicable if &#x60;renotify_interval&#x60; is &#x60;None&#x60;. | [optional][default to &#39;none&#39;] |
| **evaluation_delay** | **Integer** | Time (in seconds) to delay evaluation, as a non-negative integer. For example, if the value is set to &#x60;300&#x60; (5min), the timeframe is set to &#x60;last_5m&#x60; and the time is 7:00, the monitor evaluates data from 6:50 to 6:55. This is useful for AWS CloudWatch and other backfilled metrics to ensure the monitor always has data during evaluation. | [optional] |
| **groupby_simple_monitor** | **Boolean** | Whether the log alert monitor triggers a single alert or multiple alerts when any group breaches a threshold. | [optional] |
| **include_tags** | **Boolean** | A Boolean indicating whether notifications from this monitor automatically inserts its triggering tags into the title.  **Examples** - If &#x60;True&#x60;, &#x60;[Triggered on {host:h1}] Monitor Title&#x60; - If &#x60;False&#x60;, &#x60;[Triggered] Monitor Title&#x60; | [optional][default to true] |
| **locked** | **Boolean** | Whether or not the monitor is locked (only editable by creator and admins). | [optional] |
| **min_failure_duration** | **Integer** | How long the test should be in failure before alerting (integer, number of seconds, max 7200). | [optional][default to 0] |
| **min_location_failed** | **Integer** | The minimum number of locations in failure at the same time during at least one moment in the &#x60;min_failure_duration&#x60; period (&#x60;min_location_failed&#x60; and &#x60;min_failure_duration&#x60; are part of the advanced alerting rules - integer, &gt;&#x3D; 1). | [optional][default to 1] |
| **new_host_delay** | **Integer** | Time (in seconds) to allow a host to boot and applications to fully start before starting the evaluation of monitor results. Should be a non negative integer. | [optional][default to 300] |
| **no_data_timeframe** | **Integer** | The number of minutes before a monitor notifies after data stops reporting. Datadog recommends at least 2x the monitor timeframe for metric alerts or 2 minutes for service checks. If omitted, 2x the evaluation timeframe is used for metric alerts, and 24 hours is used for service checks. | [optional] |
| **notify_audit** | **Boolean** | A Boolean indicating whether tagged users is notified on changes to this monitor. | [optional][default to false] |
| **notify_no_data** | **Boolean** | A Boolean indicating whether this monitor notifies when data stops reporting. | [optional][default to false] |
| **renotify_interval** | **Integer** | The number of minutes after the last notification before a monitor re-notifies on the current status. It only re-notifies if it’s not resolved. | [optional] |
| **require_full_window** | **Boolean** | A Boolean indicating whether this monitor needs a full window of data before it’s evaluated. We highly recommend you set this to &#x60;false&#x60; for sparse metrics, otherwise some evaluations are skipped. Default is false. | [optional] |
| **silenced** | **Hash&lt;String, Integer&gt;** | Information about the downtime applied to the monitor. | [optional] |
| **synthetics_check_id** | **String** | ID of the corresponding Synthetic check. | [optional] |
| **threshold_windows** | [**MonitorThresholdWindowOptions**](MonitorThresholdWindowOptions.md) |  | [optional] |
| **thresholds** | [**MonitorThresholds**](MonitorThresholds.md) |  | [optional] |
| **timeout_h** | **Integer** | The number of hours of the monitor not reporting data before it automatically resolves from a triggered state. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::MonitorOptions.new(
  aggregation: null,
  device_ids: null,
  enable_logs_sample: null,
  escalation_message: null,
  evaluation_delay: null,
  groupby_simple_monitor: null,
  include_tags: null,
  locked: null,
  min_failure_duration: null,
  min_location_failed: null,
  new_host_delay: null,
  no_data_timeframe: null,
  notify_audit: null,
  notify_no_data: null,
  renotify_interval: null,
  require_full_window: null,
  silenced: null,
  synthetics_check_id: null,
  threshold_windows: null,
  thresholds: null,
  timeout_h: null
)
```

