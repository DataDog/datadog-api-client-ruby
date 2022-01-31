# DatadogAPIClient::V1::UsageProfilingHour

## Properties

| Name                          | Type        | Description                                                                | Notes      |
| ----------------------------- | ----------- | -------------------------------------------------------------------------- | ---------- |
| **avg_container_agent_count** | **Integer** | Get average number of container agents for that hour.                      | [optional] |
| **host_count**                | **Integer** | Contains the total number of profiled hosts reporting during a given hour. | [optional] |
| **hour**                      | **Time**    | The hour for the usage.                                                    | [optional] |
| **org_name**                  | **String**  | The organization name.                                                     | [optional] |
| **public_id**                 | **String**  | The organization public ID.                                                | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageProfilingHour.new(
  avg_container_agent_count: null,
  host_count: null,
  hour: null,
  org_name: null,
  public_id: null
)
```
