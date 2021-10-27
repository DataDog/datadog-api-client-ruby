# DatadogAPIClient::V1::LogsByRetentionOrgUsage

## Properties

| Name      | Type                                                               | Description                                                        | Notes      |
| --------- | ------------------------------------------------------------------ | ------------------------------------------------------------------ | ---------- |
| **usage** | [**Array&lt;LogsRetentionSumUsage&gt;**](LogsRetentionSumUsage.md) | Indexed logs usage for each active retention for the organization. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsByRetentionOrgUsage.new(
  usage: null
)
```
