# DatadogAPIClient::V1::SyntheticsBasicAuthWeb

## Properties

| Name         | Type                                                            | Description                                   | Notes                      |
| ------------ | --------------------------------------------------------------- | --------------------------------------------- | -------------------------- |
| **password** | **String**                                                      | Password to use for the basic authentication. |                            |
| **type**     | [**SyntheticsBasicAuthWebType**](SyntheticsBasicAuthWebType.md) |                                               | [default to &#39;web&#39;] |
| **username** | **String**                                                      | Username to use for the basic authentication. |                            |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsBasicAuthWeb.new(
  password: ,
  type: null,
  username:
)
```
