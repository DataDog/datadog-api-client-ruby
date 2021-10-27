# DatadogAPIClient::V2::LogsAggregateResponseData

## Properties

| Name        | Type                                                           | Description                                       | Notes      |
| ----------- | -------------------------------------------------------------- | ------------------------------------------------- | ---------- |
| **buckets** | [**Array&lt;LogsAggregateBucket&gt;**](LogsAggregateBucket.md) | The list of matching buckets, one item per bucket | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsAggregateResponseData.new(
  buckets: null
)
```
