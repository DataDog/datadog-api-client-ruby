# DatadogAPIClient::V1::UsageRumUnitsResponse

## Properties

| Name      | Type                                                       | Description                     | Notes      |
| --------- | ---------------------------------------------------------- | ------------------------------- | ---------- |
| **usage** | [**Array&lt;UsageRumUnitsHour&gt;**](UsageRumUnitsHour.md) | Get hourly usage for RUM Units. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageRumUnitsResponse.new(
  usage: null
)
```
