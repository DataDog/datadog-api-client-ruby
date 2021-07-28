# DatadogAPIClient::V1::ChargebackSummaryCharge

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **charge_type** | **String** | The subscription type for the usage (&#x60;committed&#x60;, &#x60;on_demand&#x60;, or &#x60;committed_remaining&#x60;). | [optional] |
| **cost** | **Float** | Cost of usage for product attributable to sub-org. | [optional] |
| **price_per_unit** | **Float** | Price in dollars per unit of usage. | [optional] |
| **product_name** | **String** | Name of product. | [optional] |
| **units** | **Float** | Number of billed units attributable to sub-org. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ChargebackSummaryCharge.new(
  charge_type: null,
  cost: null,
  price_per_unit: null,
  product_name: null,
  units: null
)
```

