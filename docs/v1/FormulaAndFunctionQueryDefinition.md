# DatadogAPIClient::V1::FormulaAndFunctionQueryDefinition

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'datadog_api_client/v1'

DatadogAPIClient::V1::FormulaAndFunctionQueryDefinition.openapi_one_of
# =>
# [
#   :'TimeSeriesFormulaAndFunctionEventQueryDefinition',
#   :'TimeSeriesFormulaAndFunctionMetricQueryDefinition',
#   :'TimeSeriesFormulaAndFunctionProcessQueryDefinition'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'datadog_api_client/v1'

DatadogAPIClient::V1::FormulaAndFunctionQueryDefinition.build(data)
# => #<TimeSeriesFormulaAndFunctionEventQueryDefinition:0x00007fdd4aab02a0>

DatadogAPIClient::V1::FormulaAndFunctionQueryDefinition.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `TimeSeriesFormulaAndFunctionEventQueryDefinition`
- `TimeSeriesFormulaAndFunctionMetricQueryDefinition`
- `TimeSeriesFormulaAndFunctionProcessQueryDefinition`
- `nil` (if no type matches)

