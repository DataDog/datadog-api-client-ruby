# DatadogAPIClient::V1::SyntheticsApiTestResultFailure

## Properties

| Name        | Type                                                                | Description                 | Notes      |
| ----------- | ------------------------------------------------------------------- | --------------------------- | ---------- |
| **code**    | [**SyntheticsApiTestFailureCode**](SyntheticsApiTestFailureCode.md) |                             | [optional] |
| **message** | **String**                                                          | The API test error message. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsApiTestResultFailure.new(
  code: null,
  message: Error during DNS resolution (ENOTFOUND).
)
```
