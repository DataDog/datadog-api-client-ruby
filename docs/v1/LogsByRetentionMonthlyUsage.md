# DatadogAPIClient::V1::LogsByRetentionMonthlyUsage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **String** | The month for the usage. | [optional] |
| **usage** | [**Array&lt;LogsRetentionSumUsage&gt;**](LogsRetentionSumUsage.md) | Indexed logs usage for each active retention for the month. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsByRetentionMonthlyUsage.new(
  date: null,
  usage: null
)
```

