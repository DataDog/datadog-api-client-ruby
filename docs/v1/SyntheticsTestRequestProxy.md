# DatadogAPIClient::V1::SyntheticsTestRequestProxy

## Properties

| Name        | Type                           | Description                                  | Notes      |
| ----------- | ------------------------------ | -------------------------------------------- | ---------- |
| **headers** | **Hash&lt;String, String&gt;** | Headers to include when performing the test. | [optional] |
| **url**     | **String**                     | URL of the proxy to perform the test.        |            |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsTestRequestProxy.new(
  headers: null,
  url: https://example.com
)
```
