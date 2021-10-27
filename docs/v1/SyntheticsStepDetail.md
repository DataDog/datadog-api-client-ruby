# DatadogAPIClient::V1::SyntheticsStepDetail

## Properties

| Name                      | Type                                                                           | Description                                                                                                                                 | Notes      |
| ------------------------- | ------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **browser_errors**        | [**Array&lt;SyntheticsBrowserError&gt;**](SyntheticsBrowserError.md)           | Array of errors collected for a browser test.                                                                                               | [optional] |
| **check_type**            | [**SyntheticsCheckType**](SyntheticsCheckType.md)                              |                                                                                                                                             | [optional] |
| **description**           | **String**                                                                     | Description of the test.                                                                                                                    | [optional] |
| **duration**              | **Float**                                                                      | Total duration in millisecond of the test.                                                                                                  | [optional] |
| **error**                 | **String**                                                                     | Error returned by the test.                                                                                                                 | [optional] |
| **playing_tab**           | [**SyntheticsPlayingTab**](SyntheticsPlayingTab.md)                            |                                                                                                                                             | [optional] |
| **screenshot_bucket_key** | **Boolean**                                                                    | Whether or not screenshots where collected by the test.                                                                                     | [optional] |
| **skipped**               | **Boolean**                                                                    | Whether or not to skip this step.                                                                                                           | [optional] |
| **snapshot_bucket_key**   | **Boolean**                                                                    | Whether or not snapshots where collected by the test.                                                                                       | [optional] |
| **step_id**               | **Integer**                                                                    | The step ID.                                                                                                                                | [optional] |
| **sub_test_step_details** | [**Array&lt;SyntheticsStepDetail&gt;**](SyntheticsStepDetail.md)               | If this steps include a sub-test. [Subtests documentation](https://docs.datadoghq.com/synthetics/browser_tests/advanced_options/#subtests). | [optional] |
| **time_to_interactive**   | **Float**                                                                      | Time before starting the step.                                                                                                              | [optional] |
| **type**                  | [**SyntheticsStepType**](SyntheticsStepType.md)                                |                                                                                                                                             | [optional] |
| **url**                   | **String**                                                                     | URL to perform the step against.                                                                                                            | [optional] |
| **value**                 | **Object**                                                                     | Value for the step.                                                                                                                         | [optional] |
| **vitals_metrics**        | [**Array&lt;SyntheticsCoreWebVitals&gt;**](SyntheticsCoreWebVitals.md)         | Array of Core Web Vitals metrics for the step.                                                                                              | [optional] |
| **warnings**              | [**Array&lt;SyntheticsStepDetailWarning&gt;**](SyntheticsStepDetailWarning.md) | Warning collected that didn&#39;t failed the step.                                                                                          | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsStepDetail.new(
  browser_errors: null,
  check_type: null,
  description: null,
  duration: null,
  error: null,
  playing_tab: null,
  screenshot_bucket_key: null,
  skipped: null,
  snapshot_bucket_key: null,
  step_id: null,
  sub_test_step_details: null,
  time_to_interactive: null,
  type: null,
  url: null,
  value: null,
  vitals_metrics: null,
  warnings: null
)
```
