# DatadogAPIClient::V1::UsageSyntheticsBrowserResponse

## Properties

| Name      | Type                                                                         | Description                                    | Notes      |
| --------- | ---------------------------------------------------------------------------- | ---------------------------------------------- | ---------- |
| **usage** | [**Array&lt;UsageSyntheticsBrowserHour&gt;**](UsageSyntheticsBrowserHour.md) | Get hourly usage for Synthetics Browser tests. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageSyntheticsBrowserResponse.new(
  usage: null
)
```
