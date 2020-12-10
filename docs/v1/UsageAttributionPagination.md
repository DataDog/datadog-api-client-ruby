# DatadogAPIClient::V1::UsageAttributionPagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Integer** | Maximum amount of records to be returned. | [optional] |
| **offset** | **Integer** | Records to be skipped before beginning to return. | [optional] |
| **sort_direction** | **String** | Direction to sort by. | [optional] |
| **sort_name** | **String** | Field to sort by. | [optional] |
| **total_number_of_records** | **Integer** | Total number of records. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageAttributionPagination.new(
  limit: null,
  offset: null,
  sort_direction: null,
  sort_name: null,
  total_number_of_records: null
)
```

