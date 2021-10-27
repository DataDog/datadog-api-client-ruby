# DatadogAPIClient::V1::LogsByRetention

## Properties

| Name               | Type                                                                     | Description                                                       | Notes      |
| ------------------ | ------------------------------------------------------------------------ | ----------------------------------------------------------------- | ---------- |
| **orgs**           | [**LogsByRetentionOrgs**](LogsByRetentionOrgs.md)                        |                                                                   | [optional] |
| **usage**          | [**Array&lt;LogsRetentionAggSumUsage&gt;**](LogsRetentionAggSumUsage.md) | Aggregated index logs usage for each retention period with usage. | [optional] |
| **usage_by_month** | [**LogsByRetentionMonthlyUsage**](LogsByRetentionMonthlyUsage.md)        |                                                                   | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsByRetention.new(
  orgs: null,
  usage: null,
  usage_by_month: null
)
```
