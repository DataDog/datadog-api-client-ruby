# DatadogAPIClient::V1::UsageAttributionPagination

## Properties

| Name                        | Type        | Description                                                                                                                                    | Notes      |
| --------------------------- | ----------- | ---------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **limit**                   | **Integer** | Maximum amount of records to be returned.                                                                                                      | [optional] |
| **next_record_id**          | **String**  | The cursor to use to get the next results, if any. To make the next request, use the same parameters with the addition of this next_record_id. | [optional] |
| **total_number_of_records** | **Integer** | Total number of records. (deprecated after May 1st, 2021)                                                                                      | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageAttributionPagination.new(
  limit: null,
  next_record_id: null,
  total_number_of_records: null
)
```
