# DatadogAPIClient::V1::UsageSNMPResponse

## Properties

| Name      | Type                                               | Description                        | Notes      |
| --------- | -------------------------------------------------- | ---------------------------------- | ---------- |
| **usage** | [**Array&lt;UsageSNMPHour&gt;**](UsageSNMPHour.md) | Get hourly usage for SNMP devices. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageSNMPResponse.new(
  usage: null
)
```
