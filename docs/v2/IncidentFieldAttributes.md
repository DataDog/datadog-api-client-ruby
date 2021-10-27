# DatadogAPIClient::V2::IncidentFieldAttributes

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'datadog_api_client/v2'

DatadogAPIClient::V2::IncidentFieldAttributes.openapi_one_of
# =>
# [
#   :'IncidentFieldAttributesMultipleValue',
#   :'IncidentFieldAttributesSingleValue'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'datadog_api_client/v2'

DatadogAPIClient::V2::IncidentFieldAttributes.build(data)
# => #<IncidentFieldAttributesMultipleValue:0x00007fdd4aab02a0>

DatadogAPIClient::V2::IncidentFieldAttributes.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name     | Type      | Description                                        |
| -------- | --------- | -------------------------------------------------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `IncidentFieldAttributesMultipleValue`
- `IncidentFieldAttributesSingleValue`
- `nil` (if no type matches)
