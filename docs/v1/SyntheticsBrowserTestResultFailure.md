# DatadogAPIClient::V1::SyntheticsBrowserTestResultFailure

## Properties

| Name        | Type                                                                        | Description                     | Notes      |
| ----------- | --------------------------------------------------------------------------- | ------------------------------- | ---------- |
| **code**    | [**SyntheticsBrowserTestFailureCode**](SyntheticsBrowserTestFailureCode.md) |                                 | [optional] |
| **message** | **String**                                                                  | The browser test error message. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsBrowserTestResultFailure.new(
  code: null,
  message: Error during DNS resolution (ENOTFOUND).
)
```
