# DatadogAPIClient::V1::SyntheticsBrowserTestResultShort

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_time** | **Float** | Last time the browser test was performed. | [optional] |
| **probe_dc** | **String** | Location from which the Browser test was performed. | [optional] |
| **result** | [**SyntheticsBrowserTestResultShortResult**](SyntheticsBrowserTestResultShortResult.md) |  | [optional] |
| **result_id** | **String** | ID of the browser test result. | [optional] |
| **status** | [**SyntheticsTestMonitorStatus**](SyntheticsTestMonitorStatus.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsBrowserTestResultShort.new(
  check_time: null,
  probe_dc: null,
  result: null,
  result_id: null,
  status: null
)
```

