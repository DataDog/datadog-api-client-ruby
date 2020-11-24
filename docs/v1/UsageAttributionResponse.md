# DatadogAPIClient::V1::UsageAttributionResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**UsageAttributionMetadata**](UsageAttributionMetadata.md) |  | [optional] |
| **usage** | [**Array&lt;UsageAttributionBody&gt;**](UsageAttributionBody.md) | Get Usage Summary by tag(s). | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageAttributionResponse.new(
  metadata: null,
  usage: null
)
```

