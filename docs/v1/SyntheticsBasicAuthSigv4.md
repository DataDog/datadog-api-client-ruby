# DatadogAPIClient::V1::SyntheticsBasicAuthSigv4

## Properties

| Name              | Type                                                                | Description                                             | Notes                        |
| ----------------- | ------------------------------------------------------------------- | ------------------------------------------------------- | ---------------------------- |
| **access_key**    | **String**                                                          | Access key for the &#x60;SIGV4&#x60; authentication.    |                              |
| **region**        | **String**                                                          | Region for the &#x60;SIGV4&#x60; authentication.        | [optional]                   |
| **secret_key**    | **String**                                                          | Secret key for the &#x60;SIGV4&#x60; authentication.    |                              |
| **service_name**  | **String**                                                          | Service name for the &#x60;SIGV4&#x60; authentication.  | [optional]                   |
| **session_token** | **String**                                                          | Session token for the &#x60;SIGV4&#x60; authentication. | [optional]                   |
| **type**          | [**SyntheticsBasicAuthSigv4Type**](SyntheticsBasicAuthSigv4Type.md) |                                                         | [default to &#39;sigv4&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsBasicAuthSigv4.new(
  access_key: AKIAIOSFODNN7EXAMPLE,
  region: us-east-1,
  secret_key: wJalrXUtnFEMI/K7MDENG/bPxRfiCYzEXAMPLEKEY,
  service_name: execute-api,
  session_token: AQoEXAMPLEH4aoAH0gNCAPyJxz4BlCFFxWNE1OPTgk5TthT+FvwqnKwRcOIfrRh3c/L
To6UDdyJwOOvEVPvLXCrrrUtdnniCEXAMPLE/IvU1dYUg2RVAJBanLiHb4IgRmpRV3z
rkuWJOgQs8IZZaIv2BXIa2R4OlgkBN9bkUDNCJiBeb/AXlzBBko7b15fjrBs2+cTQtp
Z3CYWFXG8C5zqx37wnOE49mRl/+OtkIKGO7fAE
,
  type: null
)
```
