# DatadogAPIClient::V2::APIKeyCreateData

## Properties

| Name           | Type                                                    | Description | Notes                           |
| -------------- | ------------------------------------------------------- | ----------- | ------------------------------- |
| **attributes** | [**APIKeyCreateAttributes**](APIKeyCreateAttributes.md) |             |                                 |
| **type**       | [**APIKeysType**](APIKeysType.md)                       |             | [default to &#39;api_keys&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::APIKeyCreateData.new(
  attributes: null,
  type: null
)
```
