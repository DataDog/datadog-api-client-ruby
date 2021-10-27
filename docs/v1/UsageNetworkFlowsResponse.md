# DatadogAPIClient::V1::UsageNetworkFlowsResponse

## Properties

| Name      | Type                                                               | Description                         | Notes      |
| --------- | ------------------------------------------------------------------ | ----------------------------------- | ---------- |
| **usage** | [**Array&lt;UsageNetworkFlowsHour&gt;**](UsageNetworkFlowsHour.md) | Get hourly usage for Network Flows. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageNetworkFlowsResponse.new(
  usage: null
)
```
