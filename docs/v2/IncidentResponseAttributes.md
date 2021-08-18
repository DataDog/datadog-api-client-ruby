# DatadogAPIClient::V2::IncidentResponseAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created** | **Time** | Timestamp when the incident was created. | [optional][readonly] |
| **customer_impact_duration** | **Integer** | Length of the incident&#39;s customer impact in seconds. Equals the difference between &#x60;customer_impact_start&#x60; and &#x60;customer_impact_end&#x60;. | [optional][readonly] |
| **customer_impact_end** | **Time** | Timestamp when customers were no longer impacted by the incident. | [optional] |
| **customer_impact_scope** | **String** | A summary of the impact customers experienced during the incident. | [optional] |
| **customer_impact_start** | **Time** | Timestamp when customers began being impacted by the incident. | [optional] |
| **customer_impacted** | **Boolean** | A flag indicating whether the incident caused customer impact. | [optional] |
| **detected** | **Time** | Timestamp when the incident was detected. | [optional] |
| **fields** | [**Hash&lt;String, IncidentFieldAttributes&gt;**](IncidentFieldAttributes.md) | A condensed view of the user-defined fields attached to incidents. | [optional] |
| **modified** | **Time** | Timestamp when the incident was last modified. | [optional][readonly] |
| **notification_handles** | [**Array&lt;IncidentNotificationHandle&gt;**](IncidentNotificationHandle.md) | Notification handles that will be notified of the incident during update. | [optional] |
| **postmortem_id** | **String** | The UUID of the postmortem object attached to the incident. | [optional] |
| **public_id** | **Integer** | The monotonically increasing integer ID for the incident. | [optional] |
| **resolved** | **Time** | Timestamp when the incident&#39;s state was set to resolved. | [optional] |
| **time_to_detect** | **Integer** | The amount of time in seconds to detect the incident. Equals the difference between &#x60;customer_impact_start&#x60; and &#x60;detected&#x60;. | [optional][readonly] |
| **time_to_internal_response** | **Integer** | The amount of time in seconds to call incident after detection. Equals the difference of &#x60;detected&#x60; and &#x60;created&#x60;. | [optional][readonly] |
| **time_to_repair** | **Integer** | The amount of time in seconds to resolve customer impact after detecting the issue. Equals the difference between &#x60;customer_impact_end&#x60; and &#x60;detected&#x60;. | [optional][readonly] |
| **time_to_resolve** | **Integer** | The amount of time in seconds to resolve the incident after it was created. Equals the difference between &#x60;created&#x60; and &#x60;resolved&#x60;. | [optional][readonly] |
| **title** | **String** | The title of the incident, which summarizes what happened. |  |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::IncidentResponseAttributes.new(
  created: null,
  customer_impact_duration: null,
  customer_impact_end: null,
  customer_impact_scope: An example customer impact scope,
  customer_impact_start: null,
  customer_impacted: false,
  detected: null,
  fields: {&quot;severity&quot;:{&quot;type&quot;:&quot;dropdown&quot;,&quot;value&quot;:&quot;SEV-5&quot;}},
  modified: null,
  notification_handles: null,
  postmortem_id: 00000000-0000-0000-0000-000000000000,
  public_id: 1,
  resolved: null,
  time_to_detect: null,
  time_to_internal_response: null,
  time_to_repair: null,
  time_to_resolve: null,
  title: A test incident title
)
```

