# DatadogAPIClient::V1::SyntheticsBrowserTestResultShortResult

## Properties

| Name                     | Type                                        | Description                                               | Notes      |
| ------------------------ | ------------------------------------------- | --------------------------------------------------------- | ---------- |
| **device**               | [**SyntheticsDevice**](SyntheticsDevice.md) |                                                           | [optional] |
| **duration**             | **Float**                                   | Length in second of the browser test run.                 | [optional] |
| **error_count**          | **Integer**                                 | Amount of errors collected for a single browser test run. | [optional] |
| **step_count_completed** | **Integer**                                 | Amount of browser test steps completed before failing.    | [optional] |
| **step_count_total**     | **Integer**                                 | Total amount of browser test steps.                       | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsBrowserTestResultShortResult.new(
  device: null,
  duration: null,
  error_count: null,
  step_count_completed: null,
  step_count_total: null
)
```
