# DatadogAPIClient::V1::GCPAccount

## Properties

| Name                            | Type                    | Description                                                                                                                                                                              | Notes      |
| ------------------------------- | ----------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **auth_provider_x509_cert_url** | **String**              | Should be &#x60;https://www.googleapis.com/oauth2/v1/certs&#x60;.                                                                                                                        | [optional] |
| **auth_uri**                    | **String**              | Should be &#x60;https://accounts.google.com/o/oauth2/auth&#x60;.                                                                                                                         | [optional] |
| **automute**                    | **Boolean**             | Silence monitors for expected GCE instance shutdowns.                                                                                                                                    | [optional] |
| **client_email**                | **String**              | Your email found in your JSON service account key.                                                                                                                                       | [optional] |
| **client_id**                   | **String**              | Your ID found in your JSON service account key.                                                                                                                                          | [optional] |
| **client_x509_cert_url**        | **String**              | Should be &#x60;https://www.googleapis.com/robot/v1/metadata/x509/&lt;CLIENT_EMAIL&gt;&#x60; where &#x60;&lt;CLIENT_EMAIL&gt;&#x60; is the email found in your JSON service account key. | [optional] |
| **errors**                      | **Array&lt;String&gt;** | An array of errors.                                                                                                                                                                      | [optional] |
| **host_filters**                | **String**              | Limit the GCE instances that are pulled into Datadog by using tags. Only hosts that match one of the defined tags are imported into Datadog.                                             | [optional] |
| **private_key**                 | **String**              | Your private key name found in your JSON service account key.                                                                                                                            | [optional] |
| **private_key_id**              | **String**              | Your private key ID found in your JSON service account key.                                                                                                                              | [optional] |
| **project_id**                  | **String**              | Your Google Cloud project ID found in your JSON service account key.                                                                                                                     | [optional] |
| **token_uri**                   | **String**              | Should be &#x60;https://accounts.google.com/o/oauth2/token&#x60;.                                                                                                                        | [optional] |
| **type**                        | **String**              | The value for service_account found in your JSON service account key.                                                                                                                    | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::GCPAccount.new(
  auth_provider_x509_cert_url: https://www.googleapis.com/oauth2/v1/certs,
  auth_uri: https://accounts.google.com/o/oauth2/auth,
  automute: null,
  client_email: api-dev@datadog-sandbox.iam.gserviceaccount.com,
  client_id: 123456712345671234567,
  client_x509_cert_url: https://www.googleapis.com/robot/v1/metadata/x509/&lt;CLIENT_EMAIL&gt;,
  errors: [&quot;*&quot;],
  host_filters: key:value,filter:example,
  private_key: private_key,
  private_key_id: 123456789abcdefghi123456789abcdefghijklm,
  project_id: datadog-apitest,
  token_uri: https://accounts.google.com/o/oauth2/token,
  type: service_account
)
```
