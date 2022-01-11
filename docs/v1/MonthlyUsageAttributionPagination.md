# DatadogAPIClient::V1::MonthlyUsageAttributionPagination

## Properties

| Name               | Type       | Description                                                                                                                                               | Notes      |
| ------------------ | ---------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **next_record_id** | **String** | The cursor to use to get the next results, if any. To make the next request, use the same parameters with the addition of the &#x60;next_record_id&#x60;. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::MonthlyUsageAttributionPagination.new(
  next_record_id: null
)
```
