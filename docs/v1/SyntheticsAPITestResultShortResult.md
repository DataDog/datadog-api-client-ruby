# DatadogAPIClient::V1::SyntheticsAPITestResultShortResult

## Properties

| Name        | Type                                        | Description                                     | Notes      |
| ----------- | ------------------------------------------- | ----------------------------------------------- | ---------- |
| **passed**  | **Boolean**                                 | Describes if the test run has passed or failed. | [optional] |
| **timings** | [**SyntheticsTiming**](SyntheticsTiming.md) |                                                 | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsAPITestResultShortResult.new(
  passed: null,
  timings: null
)
```
