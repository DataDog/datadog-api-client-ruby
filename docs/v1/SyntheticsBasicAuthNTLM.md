# DatadogAPIClient::V1::SyntheticsBasicAuthNTLM

## Properties

| Name            | Type                                                              | Description                                                         | Notes                       |
| --------------- | ----------------------------------------------------------------- | ------------------------------------------------------------------- | --------------------------- |
| **domain**      | **String**                                                        | Domain for the authentication to use when performing the test.      | [optional]                  |
| **password**    | **String**                                                        | Password for the authentication to use when performing the test.    | [optional]                  |
| **type**        | [**SyntheticsBasicAuthNTLMType**](SyntheticsBasicAuthNTLMType.md) |                                                                     | [default to &#39;ntlm&#39;] |
| **username**    | **String**                                                        | Username for the authentication to use when performing the test.    | [optional]                  |
| **workstation** | **String**                                                        | Workstation for the authentication to use when performing the test. | [optional]                  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsBasicAuthNTLM.new(
  domain: DOMAINNAME,
  password: examplepassword,
  type: null,
  username: joedoe,
  workstation:
)
```
