# DatadogAPIClient::V1::MonitorThresholds

## Properties

| Name                  | Type      | Description                                          | Notes      |
| --------------------- | --------- | ---------------------------------------------------- | ---------- |
| **critical**          | **Float** | The monitor &#x60;CRITICAL&#x60; threshold.          | [optional] |
| **critical_recovery** | **Float** | The monitor &#x60;CRITICAL&#x60; recovery threshold. | [optional] |
| **ok**                | **Float** | The monitor &#x60;OK&#x60; threshold.                | [optional] |
| **unknown**           | **Float** | The monitor UNKNOWN threshold.                       | [optional] |
| **warning**           | **Float** | The monitor &#x60;WARNING&#x60; threshold.           | [optional] |
| **warning_recovery**  | **Float** | The monitor &#x60;WARNING&#x60; recovery threshold.  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::MonitorThresholds.new(
  critical: null,
  critical_recovery: null,
  ok: null,
  unknown: null,
  warning: null,
  warning_recovery: null
)
```
