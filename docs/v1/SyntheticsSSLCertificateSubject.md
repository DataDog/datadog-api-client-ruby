# DatadogAPIClient::V1::SyntheticsSSLCertificateSubject

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **c** | **String** | Country Name associated with the certificate. | [optional] |
| **cn** | **String** | Common Name that associated with the certificate. | [optional] |
| **l** | **String** | Locality associated with the certificate. | [optional] |
| **o** | **String** | Organization associated with the certificate. | [optional] |
| **ou** | **String** | Organizational Unit associated with the certificate. | [optional] |
| **st** | **String** | State Or Province Name associated with the certificate. | [optional] |
| **alt_name** | **String** | Subject Alternative Name associated with the certificate. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsSSLCertificateSubject.new(
  c: null,
  cn: null,
  l: null,
  o: null,
  ou: null,
  st: null,
  alt_name: null
)
```

