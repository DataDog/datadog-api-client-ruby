# DatadogAPIClient::V1::ListStreamQuery

## Properties

| Name             | Type                                        | Description      | Notes                               |
| ---------------- | ------------------------------------------- | ---------------- | ----------------------------------- |
| **data_source**  | [**ListStreamSource**](ListStreamSource.md) |                  | [default to &#39;issue_stream&#39;] |
| **indexes**      | **Array&lt;String&gt;**                     | List of indexes. | [optional]                          |
| **query_string** | **String**                                  | Widget query.    |                                     |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ListStreamQuery.new(
  data_source: null,
  indexes: null,
  query_string: @service:app
)
```
