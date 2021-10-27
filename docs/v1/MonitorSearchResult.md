# DatadogAPIClient::V1::MonitorSearchResult

## Properties

| Name                  | Type                                                                                   | Description                                                                                                                                                                                                                                                                                        | Notes                |
| --------------------- | -------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------- |
| **classification**    | **String**                                                                             | Classification of the monitor.                                                                                                                                                                                                                                                                     | [optional][readonly] |
| **creator**           | [**Creator**](Creator.md)                                                              |                                                                                                                                                                                                                                                                                                    | [optional]           |
| **id**                | **Integer**                                                                            | ID of the monitor.                                                                                                                                                                                                                                                                                 | [optional][readonly] |
| **last_triggered_ts** | **Integer**                                                                            | Latest timestamp the monitor triggered.                                                                                                                                                                                                                                                            | [optional][readonly] |
| **metrics**           | **Array&lt;String&gt;**                                                                | Metrics used by the monitor.                                                                                                                                                                                                                                                                       | [optional][readonly] |
| **name**              | **String**                                                                             | The monitor name.                                                                                                                                                                                                                                                                                  | [optional][readonly] |
| **notifications**     | [**Array&lt;MonitorSearchResultNotification&gt;**](MonitorSearchResultNotification.md) | The notification triggered by the monitor.                                                                                                                                                                                                                                                         | [optional][readonly] |
| **org_id**            | **Integer**                                                                            | The ID of the organization.                                                                                                                                                                                                                                                                        | [optional][readonly] |
| **scopes**            | **Array&lt;String&gt;**                                                                | The scope(s) to which the downtime applies, e.g. &#x60;host:app2&#x60;. Provide multiple scopes as a comma-separated list, e.g. &#x60;env:dev,env:prod&#x60;. The resulting downtime applies to sources that matches ALL provided scopes (i.e. &#x60;env:dev AND env:prod&#x60;), NOT any of them. | [optional]           |
| **status**            | [**MonitorOverallStates**](MonitorOverallStates.md)                                    |                                                                                                                                                                                                                                                                                                    | [optional]           |
| **tags**              | **Array&lt;String&gt;**                                                                | Tags associated with the monitor.                                                                                                                                                                                                                                                                  | [optional][readonly] |
| **type**              | [**MonitorType**](MonitorType.md)                                                      |                                                                                                                                                                                                                                                                                                    | [optional]           |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::MonitorSearchResult.new(
  classification: null,
  creator: null,
  id: null,
  last_triggered_ts: null,
  metrics: null,
  name: null,
  notifications: null,
  org_id: null,
  scopes: [&quot;host:app2&quot;,&quot;env:dev,env:prod&quot;],
  status: null,
  tags: null,
  type: null
)
```
