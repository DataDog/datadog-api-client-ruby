# DatadogAPIClient::V2::Pagination

## Properties

| Name                     | Type        | Description                                    | Notes      |
| ------------------------ | ----------- | ---------------------------------------------- | ---------- |
| **total_count**          | **Integer** | Total count.                                   | [optional] |
| **total_filtered_count** | **Integer** | Total count of elements matched by the filter. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::Pagination.new(
  total_count: null,
  total_filtered_count: null
)
```
