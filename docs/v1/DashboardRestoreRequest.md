# DatadogAPIClient::V1::DashboardRestoreRequest

## Properties

| Name     | Type                                                                   | Description                                         | Notes |
| -------- | ---------------------------------------------------------------------- | --------------------------------------------------- | ----- |
| **data** | [**Array&lt;DashboardBulkActionData&gt;**](DashboardBulkActionData.md) | List of dashboard bulk action request data objects. |       |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::DashboardRestoreRequest.new(
  data: [{&quot;id&quot;:&quot;123-abc-456&quot;,&quot;type&quot;:&quot;dashboard&quot;}]
)
```
