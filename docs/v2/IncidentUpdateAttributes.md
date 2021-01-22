# DatadogAPIClient::V2::IncidentUpdateAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **customer_impact_end** | **Time** | Timestamp when customers were no longer impacted by the incident. | [optional] |
| **customer_impact_scope** | **String** | A summary of the impact customers experienced during the incident. | [optional] |
| **customer_impact_start** | **Time** | Timestamp when customers began being impacted by the incident. | [optional] |
| **customer_impacted** | **Boolean** | A flag indicating whether the incident caused customer impact. | [optional] |
| **detected** | **Time** | Timestamp when the incident was detected. | [optional] |
| **fields** | [**Hash&lt;String, IncidentFieldAttributes&gt;**](IncidentFieldAttributes.md) | A condensed view of the user-defined fields for which to update selections. | [optional] |
| **notification_handles** | **Array&lt;String&gt;** | Notification handles that will be notified of the incident during update. | [optional] |
| **resolved** | **Time** | Timestamp when the incident&#39;s state was set to resolved. | [optional] |
| **title** | **String** | The title of the incident, which summarizes what happened. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::IncidentUpdateAttributes.new(
  customer_impact_end: null,
  customer_impact_scope: Example customer impact scope,
  customer_impact_start: null,
  customer_impacted: false,
  detected: null,
  fields: {&quot;severity&quot;:{&quot;type&quot;:&quot;dropdown&quot;,&quot;value&quot;:&quot;SEV-5&quot;}},
  notification_handles: null,
  resolved: null,
  title: A test incident title
)
```

