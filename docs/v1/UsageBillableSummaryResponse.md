# DatadogAPIClient::V1::UsageBillableSummaryResponse

## Properties

| Name      | Type                                                                     | Description                                              | Notes      |
| --------- | ------------------------------------------------------------------------ | -------------------------------------------------------- | ---------- |
| **usage** | [**Array&lt;UsageBillableSummaryHour&gt;**](UsageBillableSummaryHour.md) | An array of objects regarding usage of billable summary. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageBillableSummaryResponse.new(
  usage: null
)
```
