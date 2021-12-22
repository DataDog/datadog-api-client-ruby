# DatadogAPIClient::V1::HourlyUsageAttributionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**HourlyUsageAttributionMetadata**](HourlyUsageAttributionMetadata.md) |  | [optional] |
| **usage** | [**Array&lt;HourlyUsageAttributionBody&gt;**](HourlyUsageAttributionBody.md) | Get the hourly usage attribution by tag(s). | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::HourlyUsageAttributionResponse.new(
  metadata: null,
  usage: null
)
```

