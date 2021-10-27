# DatadogAPIClient::V1::SyntheticsSSLCertificate

## Properties

| Name               | Type                                                                      | Description                                                | Notes      |
| ------------------ | ------------------------------------------------------------------------- | ---------------------------------------------------------- | ---------- |
| **cipher**         | **String**                                                                | Cipher used for the connection.                            | [optional] |
| **exponent**       | **Float**                                                                 | Exponent associated to the certificate.                    | [optional] |
| **ext_key_usage**  | **Array&lt;String&gt;**                                                   | Array of extensions and details used for the certificate.  | [optional] |
| **fingerprint**    | **String**                                                                | MD5 digest of the DER-encoded Certificate information.     | [optional] |
| **fingerprint256** | **String**                                                                | SHA-1 digest of the DER-encoded Certificate information.   | [optional] |
| **issuer**         | [**SyntheticsSSLCertificateIssuer**](SyntheticsSSLCertificateIssuer.md)   |                                                            | [optional] |
| **modulus**        | **String**                                                                | Modulus associated to the SSL certificate private key.     | [optional] |
| **protocol**       | **String**                                                                | TLS protocol used for the test.                            | [optional] |
| **serial_number**  | **String**                                                                | Serial Number assigned by Symantec to the SSL certificate. | [optional] |
| **subject**        | [**SyntheticsSSLCertificateSubject**](SyntheticsSSLCertificateSubject.md) |                                                            | [optional] |
| **valid_from**     | **Time**                                                                  | Date from which the SSL certificate is valid.              | [optional] |
| **valid_to**       | **Time**                                                                  | Date until which the SSL certificate is valid.             | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsSSLCertificate.new(
  cipher: null,
  exponent: null,
  ext_key_usage: null,
  fingerprint: null,
  fingerprint256: null,
  issuer: null,
  modulus: null,
  protocol: null,
  serial_number: null,
  subject: null,
  valid_from: null,
  valid_to: null
)
```
