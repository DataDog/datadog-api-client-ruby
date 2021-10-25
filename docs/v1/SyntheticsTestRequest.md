# DatadogAPIClient::V1::SyntheticsTestRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allow_insecure** | **Boolean** | Allows loading insecure content for an HTTP request in a multistep test step. | [optional] |
| **basic_auth** | [**SyntheticsBasicAuth**](SyntheticsBasicAuth.md) |  | [optional] |
| **body** | **String** | Body to include in the test. | [optional] |
| **certificate** | [**SyntheticsTestRequestCertificate**](SyntheticsTestRequestCertificate.md) |  | [optional] |
| **dns_server** | **String** | DNS server to use for DNS tests. | [optional] |
| **dns_server_port** | **Integer** | DNS server port to use for DNS tests. | [optional] |
| **follow_redirects** | **Boolean** | Specifies whether or not the request follows redirects. | [optional] |
| **headers** | **Hash&lt;String, String&gt;** | Headers to include when performing the test. | [optional] |
| **host** | **String** | Host name to perform the test with. | [optional] |
| **method** | [**HTTPMethod**](HTTPMethod.md) |  | [optional] |
| **no_saving_response_body** | **Boolean** | Determines whether or not to save the response body. | [optional] |
| **number_of_packets** | **Integer** | Number of pings to use per test. | [optional] |
| **port** | **Integer** | Port to use when performing the test. | [optional] |
| **query** | **Object** | Query to use for the test. | [optional] |
| **servername** | **String** | For SSL tests, it specifies on which server you want to initiate the TLS handshake, allowing the server to present one of multiple possible certificates on the same IP address and TCP port number. | [optional] |
| **should_track_hops** | **Boolean** | Turns on a traceroute probe to discover all gateways along the path to the host destination. | [optional] |
| **timeout** | **Float** | Timeout in seconds for the test. | [optional] |
| **url** | **String** | URL to perform the test with. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsTestRequest.new(
  allow_insecure: null,
  basic_auth: null,
  body: null,
  certificate: null,
  dns_server: null,
  dns_server_port: null,
  follow_redirects: null,
  headers: null,
  host: null,
  method: null,
  no_saving_response_body: null,
  number_of_packets: null,
  port: null,
  query: null,
  servername: null,
  should_track_hops: null,
  timeout: null,
  url: null
)
```

