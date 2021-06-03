# DatadogAPIClient::V1::UsageCWSHour

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cws_container_count** | **Integer** | The total number of Cloud Workload Security container hours from the start of the given hour’s month until the given hour. | [optional] |
| **cws_host_count** | **Integer** | The total number of Cloud Workload Security host hours from the start of the given hour’s month until the given hour. | [optional] |
| **hour** | **Time** | The hour for the usage. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageCWSHour.new(
  cws_container_count: null,
  cws_host_count: null,
  hour: null
)
```

