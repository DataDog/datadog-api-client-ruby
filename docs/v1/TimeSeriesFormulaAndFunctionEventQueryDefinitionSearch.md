# DatadogAPIClient::V1::TimeSeriesFormulaAndFunctionEventQueryDefinitionSearch

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | Events search string. |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::TimeSeriesFormulaAndFunctionEventQueryDefinitionSearch.new(
  query: service:query
)
```

