# DatadogAPIClient::V1::ChargebackSummaryResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cost_allocation** | [**Array&lt;ChargebackOrgMonth&gt;**](ChargebackOrgMonth.md) | Get cost allocated by sub-org. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ChargebackSummaryResponse.new(
  cost_allocation: null
)
```

