# DatadogAPIClient::V1::UsageSyntheticsBrowserHour

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **browser_check_calls_count** | **Integer** | Contains the number of Synthetics Browser tests run. | [optional] |
| **hour** | **Time** | The hour for the usage. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageSyntheticsBrowserHour.new(
  browser_check_calls_count: null,
  hour: null
)
```

