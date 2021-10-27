# DatadogAPIClient::V2::IncidentResponseIncludedItem

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'datadog_api_client/v2'

DatadogAPIClient::V2::IncidentResponseIncludedItem.openapi_one_of
# =>
# [
#   :'User'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'datadog_api_client/v2'

DatadogAPIClient::V2::IncidentResponseIncludedItem.build(data)
# => #<User:0x00007fdd4aab02a0>

DatadogAPIClient::V2::IncidentResponseIncludedItem.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name     | Type      | Description                                        |
| -------- | --------- | -------------------------------------------------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `User`
- `nil` (if no type matches)
