# DatadogAPIClient::V1::NotebookCellTime

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'datadog_api_client/v1'

DatadogAPIClient::V1::NotebookCellTime.openapi_one_of
# =>
# [
#   :'NotebookAbsoluteTime',
#   :'NotebookRelativeTime'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'datadog_api_client/v1'

DatadogAPIClient::V1::NotebookCellTime.build(data)
# => #<NotebookAbsoluteTime:0x00007fdd4aab02a0>

DatadogAPIClient::V1::NotebookCellTime.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name     | Type      | Description                                        |
| -------- | --------- | -------------------------------------------------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `NotebookAbsoluteTime`
- `NotebookRelativeTime`
- `nil` (if no type matches)
