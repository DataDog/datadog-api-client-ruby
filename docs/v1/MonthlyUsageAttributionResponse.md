# DatadogAPIClient::V1::MonthlyUsageAttributionResponse

## Properties

| Name         | Type                                                                           | Description                  | Notes      |
| ------------ | ------------------------------------------------------------------------------ | ---------------------------- | ---------- |
| **metadata** | [**MonthlyUsageAttributionMetadata**](MonthlyUsageAttributionMetadata.md)      |                              | [optional] |
| **usage**    | [**Array&lt;MonthlyUsageAttributionBody&gt;**](MonthlyUsageAttributionBody.md) | Get Usage Summary by tag(s). | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::MonthlyUsageAttributionResponse.new(
  metadata: null,
  usage: null
)
```
