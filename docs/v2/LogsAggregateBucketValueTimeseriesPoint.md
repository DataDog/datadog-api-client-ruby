# DatadogAPIClient::V2::LogsAggregateBucketValueTimeseriesPoint

## Properties

| Name      | Type       | Description                   | Notes      |
| --------- | ---------- | ----------------------------- | ---------- |
| **time**  | **String** | The time value for this point | [optional] |
| **value** | **Float**  | The value for this point      | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsAggregateBucketValueTimeseriesPoint.new(
  time: 2020-06-08T11:55:00Z,
  value: 19
)
```
