# DatadogAPIClient::V2::LogsMetricCreateAttributes

## Properties

| Name         | Type                                                       | Description                 | Notes      |
| ------------ | ---------------------------------------------------------- | --------------------------- | ---------- |
| **compute**  | [**LogsMetricCompute**](LogsMetricCompute.md)              |                             |            |
| **filter**   | [**LogsMetricFilter**](LogsMetricFilter.md)                |                             | [optional] |
| **group_by** | [**Array&lt;LogsMetricGroupBy&gt;**](LogsMetricGroupBy.md) | The rules for the group by. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsMetricCreateAttributes.new(
  compute: null,
  filter: null,
  group_by: null
)
```
