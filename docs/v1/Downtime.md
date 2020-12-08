# DatadogAPIClient::V1::Downtime

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active** | **Boolean** | If a scheduled downtime currently exists. | [optional][readonly] |
| **canceled** | **Integer** | If a scheduled downtime is canceled. | [optional][readonly] |
| **creator_id** | **Integer** | User ID of the downtime creator. | [optional][readonly] |
| **disabled** | **Boolean** | If a downtime has been disabled. | [optional] |
| **downtime_type** | **Integer** | &#x60;0&#x60; for a downtime applied on &#x60;*&#x60; or all, &#x60;1&#x60; when the downtime is only scoped to hosts, or &#x60;2&#x60; when the downtime is scoped to anything but hosts. | [optional][readonly] |
| **_end** | **Integer** | POSIX timestamp to end the downtime. If not provided, the downtime is in effect indefinitely until you cancel it. | [optional] |
| **id** | **Integer** | The downtime ID. | [optional][readonly] |
| **message** | **String** | A message to include with notifications for this downtime. Email notifications can be sent to specific users by using the same &#x60;@username&#x60; notation as events. | [optional] |
| **monitor_id** | **Integer** | A single monitor to which the downtime applies. If not provided, the downtime applies to all monitors. | [optional] |
| **monitor_tags** | **Array&lt;String&gt;** | A comma-separated list of monitor tags. For example, tags that are applied directly to monitors, not tags that are used in monitor queries (which are filtered by the scope parameter), to which the downtime applies. The resulting downtime applies to monitors that match ALL provided monitor tags. For example, &#x60;service:postgres&#x60; **AND** &#x60;team:frontend&#x60;. | [optional] |
| **parent_id** | **Integer** | ID of the parent Downtime. | [optional] |
| **recurrence** | [**DowntimeRecurrence**](DowntimeRecurrence.md) |  | [optional] |
| **scope** | **Array&lt;String&gt;** | The scope(s) to which the downtime applies. For example, &#x60;host:app2&#x60;. Provide multiple scopes as a comma-separated list like &#x60;env:dev,env:prod&#x60;. The resulting downtime applies to sources that matches ALL provided scopes (&#x60;env:dev&#x60; **AND** &#x60;env:prod&#x60;). | [optional] |
| **start** | **Integer** | POSIX timestamp to start the downtime. If not provided, the downtime starts the moment it is created. | [optional] |
| **timezone** | **String** | The timezone in which to display the downtime&#39;s start and end times in Datadog applications. | [optional] |
| **updater_id** | **Integer** | ID of the last user that updated the downtime. | [optional][readonly] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::Downtime.new(
  active: true,
  canceled: 1412799983,
  creator_id: 123456,
  disabled: false,
  downtime_type: 2,
  _end: 1412793983,
  id: 1625,
  message: Message on the downtime,
  monitor_id: 123456,
  monitor_tags: [&quot;*&quot;],
  parent_id: 123,
  recurrence: null,
  scope: [&quot;env:staging&quot;],
  start: 1412792983,
  timezone: America/New_York,
  updater_id: 123456
)
```

