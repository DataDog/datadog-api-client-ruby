# DatadogAPIClient::V1::SyntheticsSSLCertificateIssuer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **c** | **String** | Country Name that issued the certificate. | [optional] |
| **cn** | **String** | Common Name that issued certificate. | [optional] |
| **l** | **String** | Locality that issued the certificate. | [optional] |
| **o** | **String** | Organization that issued the certificate. | [optional] |
| **ou** | **String** | Organizational Unit that issued the certificate. | [optional] |
| **st** | **String** | State Or Province Name that issued the certificate. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsSSLCertificateIssuer.new(
  c: null,
  cn: null,
  l: null,
  o: null,
  ou: null,
  st: null
)
```

