# DatadogAPIClient::V2::APIKeyUpdateData

## Properties

| Name           | Type                                                    | Description        | Notes                           |
| -------------- | ------------------------------------------------------- | ------------------ | ------------------------------- |
| **attributes** | [**APIKeyUpdateAttributes**](APIKeyUpdateAttributes.md) |                    |                                 |
| **id**         | **String**                                              | ID of the API key. |                                 |
| **type**       | [**APIKeysType**](APIKeysType.md)                       |                    | [default to &#39;api_keys&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::APIKeyUpdateData.new(
  attributes: null,
  id: 00112233-4455-6677-8899-aabbccddeeff,
  type: null
)
```
