# DatadogAPIClient::V1::ServiceLevelObjectiveRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | A user-defined description of the service level objective.  Always included in service level objective responses (but may be &#x60;null&#x60;). Optional in create/update requests. | [optional] |
| **groups** | **Array&lt;String&gt;** | A list of (up to 20) monitor groups that narrow the scope of a monitor service level objective.  Included in service level objective responses if it is not empty. Optional in create/update requests for monitor service level objectives, but may only be used when then length of the &#x60;monitor_ids&#x60; field is one. | [optional] |
| **monitor_ids** | **Array&lt;Integer&gt;** | A list of monitor ids that defines the scope of a monitor service level objective. **Required if type is &#x60;monitor&#x60;**. | [optional] |
| **name** | **String** | The name of the service level objective object. |  |
| **query** | [**ServiceLevelObjectiveQuery**](ServiceLevelObjectiveQuery.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** | A list of tags associated with this service level objective. Always included in service level objective responses (but may be empty). Optional in create/update requests. | [optional] |
| **thresholds** | [**Array&lt;SLOThreshold&gt;**](SLOThreshold.md) | The thresholds (timeframes and associated targets) for this service level objective object. |  |
| **type** | [**SLOType**](SLOType.md) |  |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ServiceLevelObjectiveRequest.new(
  description: null,
  groups: [&quot;env:prod&quot;,&quot;role:mysql&quot;],
  monitor_ids: null,
  name: Custom Metric SLO,
  query: null,
  tags: [&quot;env:prod&quot;,&quot;app:core&quot;],
  thresholds: [{&quot;target&quot;:95,&quot;timeframe&quot;:&quot;7d&quot;},{&quot;target&quot;:95,&quot;timeframe&quot;:&quot;30d&quot;,&quot;warning&quot;:97}],
  type: null
)
```

