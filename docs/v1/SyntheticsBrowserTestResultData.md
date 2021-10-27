# DatadogAPIClient::V1::SyntheticsBrowserTestResultData

## Properties

| Name                      | Type                                                             | Description                                                                         | Notes      |
| ------------------------- | ---------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ---------- |
| **browser_type**          | **String**                                                       | Type of browser device used for the browser test.                                   | [optional] |
| **browser_version**       | **String**                                                       | Browser version used for the browser test.                                          | [optional] |
| **device**                | [**SyntheticsDevice**](SyntheticsDevice.md)                      |                                                                                     | [optional] |
| **duration**              | **Float**                                                        | Global duration in second of the browser test.                                      | [optional] |
| **error**                 | **String**                                                       | Error returned for the browser test.                                                | [optional] |
| **passed**                | **Boolean**                                                      | Whether or not the browser test was conducted.                                      | [optional] |
| **received_email_count**  | **Integer**                                                      | The amount of email received during the browser test.                               | [optional] |
| **start_url**             | **String**                                                       | Starting URL for the browser test.                                                  | [optional] |
| **step_details**          | [**Array&lt;SyntheticsStepDetail&gt;**](SyntheticsStepDetail.md) | Array containing the different browser test steps.                                  | [optional] |
| **thumbnails_bucket_key** | **Boolean**                                                      | Whether or not a thumbnail is associated with the browser test.                     | [optional] |
| **time_to_interactive**   | **Float**                                                        | Time in second to wait before the browser test starts after reaching the start URL. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsBrowserTestResultData.new(
  browser_type: null,
  browser_version: null,
  device: null,
  duration: null,
  error: null,
  passed: null,
  received_email_count: null,
  start_url: null,
  step_details: null,
  thumbnails_bucket_key: null,
  time_to_interactive: null
)
```
