# DatadogAPIClient::V1::LogsExclusionFilter

## Properties

| Name            | Type       | Description                                                                                                                                                      | Notes      |
| --------------- | ---------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **query**       | **String** | Default query is &#x60;\*&#x60;, meaning all logs flowing in the index would be excluded. Scope down exclusion filter to only a subset of logs with a log query. | [optional] |
| **sample_rate** | **Float**  | Sample rate to apply to logs going through this exclusion filter, a value of 1.0 excludes all logs matching the query.                                           |            |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsExclusionFilter.new(
  query: *,
  sample_rate: 1.0
)
```
