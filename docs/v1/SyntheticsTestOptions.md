# DatadogAPIClient::V1::SyntheticsTestOptions

## Properties

| Name                     | Type                                                                              | Description                                                                                         | Notes      |
| ------------------------ | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | ---------- |
| **accept_self_signed**   | **Boolean**                                                                       | For SSL test, whether or not the test should allow self signed certificates.                        | [optional] |
| **allow_insecure**       | **Boolean**                                                                       | Allows loading insecure content for an HTTP request.                                                | [optional] |
| **device_ids**           | [**Array&lt;SyntheticsDeviceID&gt;**](SyntheticsDeviceID.md)                      | For browser test, array with the different device IDs used to run the test.                         | [optional] |
| **disable_cors**         | **Boolean**                                                                       | Whether or not to disable CORS mechanism.                                                           | [optional] |
| **follow_redirects**     | **Boolean**                                                                       | For API HTTP test, whether or not the test should follow redirects.                                 | [optional] |
| **min_failure_duration** | **Integer**                                                                       | Minimum amount of time in failure required to trigger an alert.                                     | [optional] |
| **min_location_failed**  | **Integer**                                                                       | Minimum number of locations in failure required to trigger an alert.                                | [optional] |
| **monitor_name**         | **String**                                                                        | The monitor name is used for the alert title as well as for all monitor dashboard widgets and SLOs. | [optional] |
| **monitor_options**      | [**SyntheticsTestOptionsMonitorOptions**](SyntheticsTestOptionsMonitorOptions.md) |                                                                                                     | [optional] |
| **monitor_priority**     | **Integer**                                                                       | Integer from 1 (high) to 5 (low) indicating alert severity.                                         | [optional] |
| **no_screenshot**        | **Boolean**                                                                       | Prevents saving screenshots of the steps.                                                           | [optional] |
| **\_retry**              | [**SyntheticsTestOptionsRetry**](SyntheticsTestOptionsRetry.md)                   |                                                                                                     | [optional] |
| **tick_every**           | **Integer**                                                                       | The frequency at which to run the Synthetic test (in seconds).                                      | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsTestOptions.new(
  accept_self_signed: null,
  allow_insecure: null,
  device_ids: null,
  disable_cors: null,
  follow_redirects: null,
  min_failure_duration: null,
  min_location_failed: null,
  monitor_name: null,
  monitor_options: null,
  monitor_priority: null,
  no_screenshot: null,
  _retry: null,
  tick_every: null
)
```
