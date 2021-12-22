# DatadogAPIClient::V1::HourlyUsageAttributionPagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **next_record_id** | **String** | The cursor to get the next results (if any). To make the next request, use the same parameters and add &#x60;next_record_id&#x60;. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::HourlyUsageAttributionPagination.new(
  next_record_id: null
)
```

