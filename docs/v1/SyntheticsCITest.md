# DatadogAPIClient::V1::SyntheticsCITest

## Properties

| Name                            | Type                                                            | Description                                                                 | Notes      |
| ------------------------------- | --------------------------------------------------------------- | --------------------------------------------------------------------------- | ---------- |
| **allow_insecure_certificates** | **Boolean**                                                     | Disable certificate checks in API tests.                                    | [optional] |
| **basic_auth**                  | [**SyntheticsBasicAuth**](SyntheticsBasicAuth.md)               |                                                                             | [optional] |
| **body**                        | **String**                                                      | Body to include in the test.                                                | [optional] |
| **body_type**                   | **String**                                                      | Type of the data sent in a synthetics API test.                             | [optional] |
| **cookies**                     | **String**                                                      | Cookies for the request.                                                    | [optional] |
| **device_ids**                  | [**Array&lt;SyntheticsDeviceID&gt;**](SyntheticsDeviceID.md)    | For browser test, array with the different device IDs used to run the test. | [optional] |
| **follow_redirects**            | **Boolean**                                                     | For API HTTP test, whether or not the test should follow redirects.         | [optional] |
| **headers**                     | **Hash&lt;String, String&gt;**                                  | Headers to include when performing the test.                                | [optional] |
| **locations**                   | **Array&lt;String&gt;**                                         | Array of locations used to run the test.                                    | [optional] |
| **metadata**                    | [**SyntheticsCIBatchMetadata**](SyntheticsCIBatchMetadata.md)   |                                                                             | [optional] |
| **public_id**                   | **String**                                                      | The public ID of the Synthetics test to trigger.                            |            |
| **\_retry**                     | [**SyntheticsTestOptionsRetry**](SyntheticsTestOptionsRetry.md) |                                                                             | [optional] |
| **start_url**                   | **String**                                                      | Starting URL for the browser test.                                          | [optional] |
| **variables**                   | **Hash&lt;String, String&gt;**                                  | Variables to replace in the test.                                           | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsCITest.new(
  allow_insecure_certificates: null,
  basic_auth: null,
  body: null,
  body_type: null,
  cookies: null,
  device_ids: null,
  follow_redirects: null,
  headers: null,
  locations: null,
  metadata: null,
  public_id: aaa-aaa-aaa,
  _retry: null,
  start_url: null,
  variables: null
)
```
