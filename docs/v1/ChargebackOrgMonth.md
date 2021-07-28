# DatadogAPIClient::V1::ChargebackOrgMonth

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **charges** | [**Array&lt;ChargebackSummaryCharge&gt;**](ChargebackSummaryCharge.md) | Charges by product and charge type. | [optional] |
| **date** | **Time** | The month for the usage. | [optional] |
| **org_id** | **Integer** | ID of the sub-org. | [optional] |
| **total_cost** | **Float** | Total cost for all products for the sub-org within the month. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ChargebackOrgMonth.new(
  charges: null,
  date: null,
  org_id: null,
  total_cost: null
)
```

