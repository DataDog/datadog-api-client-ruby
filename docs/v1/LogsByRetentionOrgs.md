# DatadogAPIClient::V1::LogsByRetentionOrgs

## Properties

| Name      | Type                                                                   | Description                                       | Notes      |
| --------- | ---------------------------------------------------------------------- | ------------------------------------------------- | ---------- |
| **usage** | [**Array&lt;LogsByRetentionOrgUsage&gt;**](LogsByRetentionOrgUsage.md) | Indexed logs usage summary for each organization. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsByRetentionOrgs.new(
  usage: null
)
```
