# DatadogAPIClient::V1::UsageNetworkFlowsHour

## Properties

| Name                     | Type        | Description                                    | Notes      |
| ------------------------ | ----------- | ---------------------------------------------- | ---------- |
| **hour**                 | **Time**    | The hour for the usage.                        | [optional] |
| **indexed_events_count** | **Integer** | Contains the number of netflow events indexed. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageNetworkFlowsHour.new(
  hour: null,
  indexed_events_count: null
)
```
