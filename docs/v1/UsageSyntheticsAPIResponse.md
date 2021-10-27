# DatadogAPIClient::V1::UsageSyntheticsAPIResponse

## Properties

| Name      | Type                                                                 | Description                                | Notes      |
| --------- | -------------------------------------------------------------------- | ------------------------------------------ | ---------- |
| **usage** | [**Array&lt;UsageSyntheticsAPIHour&gt;**](UsageSyntheticsAPIHour.md) | Get hourly usage for Synthetics API tests. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageSyntheticsAPIResponse.new(
  usage: null
)
```
