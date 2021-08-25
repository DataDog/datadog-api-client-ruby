# DatadogAPIClient::V1::UsageDBMHour

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dbm_host_count** | **Integer** | The total number of Database Monitoring host hours from the start of the given hour’s month until the given hour. | [optional] |
| **dbm_queries_count** | **Integer** | The total number of normalized Database Monitoring queries from the start of the given hour’s month until the given hour. | [optional] |
| **hour** | **Time** | The hour for the usage. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageDBMHour.new(
  dbm_host_count: null,
  dbm_queries_count: null,
  hour: null
)
```

