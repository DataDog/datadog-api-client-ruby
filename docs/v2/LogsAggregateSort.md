# DatadogAPIClient::V2::LogsAggregateSort

## Properties

| Name            | Type                                                      | Description                                                         | Notes                                         |
| --------------- | --------------------------------------------------------- | ------------------------------------------------------------------- | --------------------------------------------- |
| **aggregation** | [**LogsAggregationFunction**](LogsAggregationFunction.md) |                                                                     | [optional]                                    |
| **metric**      | **String**                                                | The metric to sort by (only used for &#x60;type&#x3D;measure&#x60;) | [optional]                                    |
| **order**       | [**LogsSortOrder**](LogsSortOrder.md)                     |                                                                     | [optional]                                    |
| **type**        | [**LogsAggregateSortType**](LogsAggregateSortType.md)     |                                                                     | [optional][default to &#39;alphabetical&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsAggregateSort.new(
  aggregation: null,
  metric: @duration,
  order: null,
  type: null
)
```
