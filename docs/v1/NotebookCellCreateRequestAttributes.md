# DatadogAPIClient::V1::NotebookCellCreateRequestAttributes

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'datadog_api_client/v1'

DatadogAPIClient::V1::NotebookCellCreateRequestAttributes.openapi_one_of
# =>
# [
#   :'NotebookDistributionCellAttributes',
#   :'NotebookHeatMapCellAttributes',
#   :'NotebookLogStreamCellAttributes',
#   :'NotebookMarkdownCellAttributes',
#   :'NotebookTimeseriesCellAttributes',
#   :'NotebookToplistCellAttributes'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'datadog_api_client/v1'

DatadogAPIClient::V1::NotebookCellCreateRequestAttributes.build(data)
# => #<NotebookDistributionCellAttributes:0x00007fdd4aab02a0>

DatadogAPIClient::V1::NotebookCellCreateRequestAttributes.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name     | Type      | Description                                        |
| -------- | --------- | -------------------------------------------------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `NotebookDistributionCellAttributes`
- `NotebookHeatMapCellAttributes`
- `NotebookLogStreamCellAttributes`
- `NotebookMarkdownCellAttributes`
- `NotebookTimeseriesCellAttributes`
- `NotebookToplistCellAttributes`
- `nil` (if no type matches)
