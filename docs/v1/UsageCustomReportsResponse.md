# DatadogAPIClient::V1::UsageCustomReportsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;UsageCustomReportsData&gt;**](UsageCustomReportsData.md) | An array of available custom reports. | [optional] |
| **meta** | [**UsageCustomReportsMeta**](UsageCustomReportsMeta.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageCustomReportsResponse.new(
  data: null,
  meta: null
)
```

