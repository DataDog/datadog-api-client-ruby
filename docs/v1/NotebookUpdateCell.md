# DatadogAPIClient::V1::NotebookUpdateCell

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'datadog_api_client/v1'

DatadogAPIClient::V1::NotebookUpdateCell.openapi_one_of
# =>
# [
#   :'NotebookCellCreateRequest',
#   :'NotebookCellUpdateRequest'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'datadog_api_client/v1'

DatadogAPIClient::V1::NotebookUpdateCell.build(data)
# => #<NotebookCellCreateRequest:0x00007fdd4aab02a0>

DatadogAPIClient::V1::NotebookUpdateCell.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name     | Type      | Description                                        |
| -------- | --------- | -------------------------------------------------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `NotebookCellCreateRequest`
- `NotebookCellUpdateRequest`
- `nil` (if no type matches)
