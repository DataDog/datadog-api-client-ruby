# DatadogAPIClient::V1::TimeSeriesFormulaAndFunctionEventQueryDefinitionGroupBy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **facet** | **String** | Event facet. |  |
| **limit** | **Integer** | Number of groups to return. | [optional] |
| **sort** | [**TimeSeriesFormulaAndFunctionEventQueryDefinitionGroupBySort**](TimeSeriesFormulaAndFunctionEventQueryDefinitionGroupBySort.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::TimeSeriesFormulaAndFunctionEventQueryDefinitionGroupBy.new(
  facet: status.,
  limit: 10,
  sort: null
)
```

