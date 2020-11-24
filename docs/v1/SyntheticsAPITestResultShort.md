# DatadogAPIClient::V1::SyntheticsAPITestResultShort

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **check_time** | **Float** | Last time the API test was performed. | [optional] |
| **probe_dc** | **String** | Location from which the API test was performed. | [optional] |
| **result** | [**SyntheticsAPITestResultShortResult**](SyntheticsAPITestResultShortResult.md) |  | [optional] |
| **result_id** | **String** | ID of the API test result. | [optional] |
| **status** | [**SyntheticsTestMonitorStatus**](SyntheticsTestMonitorStatus.md) |  | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsAPITestResultShort.new(
  check_time: null,
  probe_dc: null,
  result: null,
  result_id: null,
  status: null
)
```

