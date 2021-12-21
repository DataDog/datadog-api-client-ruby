# DatadogAPIClient::V1::UsageDBMHour

## Properties

| Name                  | Type        | Description                                                                                                               | Notes      |
| --------------------- | ----------- | ------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **dbm_host_count**    | **Integer** | The total number of Database Monitoring host hours from the start of the given hour’s month until the given hour.         | [optional] |
| **dbm_queries_count** | **Integer** | The total number of normalized Database Monitoring queries from the start of the given hour’s month until the given hour. | [optional] |
| **hour**              | **Time**    | The hour for the usage.                                                                                                   | [optional] |
| **org_name**          | **String**  | The organization name.                                                                                                    | [optional] |
| **public_id**         | **String**  | The organization public ID.                                                                                               | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageDBMHour.new(
  dbm_host_count: null,
  dbm_queries_count: null,
  hour: null,
  org_name: null,
  public_id: null
)
```
