# DatadogAPIClient::V1::SyntheticsAPITestResultData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cert** | [**SyntheticsSSLCertificate**](SyntheticsSSLCertificate.md) |  | [optional] |
| **error_code** | [**SyntheticsErrorCode**](SyntheticsErrorCode.md) |  | [optional] |
| **error_message** | **String** | The API test error message. | [optional] |
| **event_type** | [**SyntheticsTestProcessStatus**](SyntheticsTestProcessStatus.md) |  | [optional] |
| **http_status_code** | **Integer** | The API test HTTP status code. | [optional] |
| **request_headers** | **Hash&lt;String, Object&gt;** | Request header object used for the API test. | [optional] |
| **response_body** | **String** | Response body returned for the API test. | [optional] |
| **response_headers** | **Hash&lt;String, Object&gt;** | Response headers returned for the API test. | [optional] |
| **response_size** | **Integer** | Global size in byte of the API test response. | [optional] |
| **timings** | [**SyntheticsTiming**](SyntheticsTiming.md) |  | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsAPITestResultData.new(
  cert: null,
  error_code: null,
  error_message: null,
  event_type: null,
  http_status_code: null,
  request_headers: null,
  response_body: null,
  response_headers: null,
  response_size: null,
  timings: null
)
```

