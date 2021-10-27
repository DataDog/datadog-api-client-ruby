# DatadogAPIClient::V1::SyntheticsBrowserTestConfig

## Properties

| Name                 | Type                                                                       | Description                                                                                                                              | Notes      |
| -------------------- | -------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **assertions**       | [**Array&lt;SyntheticsAssertion&gt;**](SyntheticsAssertion.md)             | Array of assertions used for the test.                                                                                                   |            |
| **config_variables** | [**Array&lt;SyntheticsConfigVariable&gt;**](SyntheticsConfigVariable.md)   | Array of variables used for the test.                                                                                                    | [optional] |
| **request**          | [**SyntheticsTestRequest**](SyntheticsTestRequest.md)                      |                                                                                                                                          |            |
| **set_cookie**       | **String**                                                                 | Cookies to be used for the request, using the [Set-Cookie](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Set-Cookie) syntax. | [optional] |
| **variables**        | [**Array&lt;SyntheticsBrowserVariable&gt;**](SyntheticsBrowserVariable.md) | Array of variables used for the test steps.                                                                                              | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsBrowserTestConfig.new(
  assertions: [],
  config_variables: null,
  request: null,
  set_cookie: null,
  variables: null
)
```
