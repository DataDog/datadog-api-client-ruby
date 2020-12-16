# DatadogAPIClient::V1::ApmStatsQueryDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **columns** | [**Array&lt;ApmStatsQueryColumnType&gt;**](ApmStatsQueryColumnType.md) | Column properties used by the front end for display. | [optional] |
| **env** | **String** | Environment name. |  |
| **name** | **String** | Operation name associated with service. |  |
| **primary_tag** | **String** | The organization&#39;s host group name and value. |  |
| **resource** | **String** | Resource name. | [optional] |
| **row_type** | [**ApmStatsQueryRowType**](ApmStatsQueryRowType.md) |  |  |
| **service** | **String** | Service name. |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ApmStatsQueryDefinition.new(
  columns: null,
  env: prod,
  name: rack.request,
  primary_tag: datacenter:*,
  resource: CartsController,
  row_type: null,
  service: web-store
)
```

