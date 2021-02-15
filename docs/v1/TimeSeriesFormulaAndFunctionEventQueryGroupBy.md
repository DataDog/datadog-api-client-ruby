# DatadogAPIClient::V1::TimeSeriesFormulaAndFunctionEventQueryGroupBy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **facet** | **String** | Event facet. |  |
| **limit** | **Integer** | Number of groups to return. | [optional] |
| **sort** | [**TimeSeriesFormulaAndFunctionEventQueryGroupBySort**](TimeSeriesFormulaAndFunctionEventQueryGroupBySort.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::TimeSeriesFormulaAndFunctionEventQueryGroupBy.new(
  facet: status.,
  limit: 10,
  sort: null
)
```

