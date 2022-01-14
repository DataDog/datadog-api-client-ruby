# DatadogAPIClient::V1::SyntheticsBasicAuth

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'datadog_api_client/v1'

DatadogAPIClient::V1::SyntheticsBasicAuth.openapi_one_of
# =>
# [
#   :'SyntheticsBasicAuthNTLM',
#   :'SyntheticsBasicAuthSigv4',
#   :'SyntheticsBasicAuthWeb'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'datadog_api_client/v1'

DatadogAPIClient::V1::SyntheticsBasicAuth.build(data)
# => #<SyntheticsBasicAuthNTLM:0x00007fdd4aab02a0>

DatadogAPIClient::V1::SyntheticsBasicAuth.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name     | Type      | Description                                        |
| -------- | --------- | -------------------------------------------------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `SyntheticsBasicAuthNTLM`
- `SyntheticsBasicAuthSigv4`
- `SyntheticsBasicAuthWeb`
- `nil` (if no type matches)
