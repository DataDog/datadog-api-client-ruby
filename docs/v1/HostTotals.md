# DatadogAPIClient::V1::HostTotals

## Properties

| Name             | Type        | Description                                                    | Notes      |
| ---------------- | ----------- | -------------------------------------------------------------- | ---------- |
| **total_active** | **Integer** | Total number of active host (UP and ???) reporting to Datadog. | [optional] |
| **total_up**     | **Integer** | Number of host that are UP and reporting to Datadog.           | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::HostTotals.new(
  total_active: null,
  total_up: null
)
```
