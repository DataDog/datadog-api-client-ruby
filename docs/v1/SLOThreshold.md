# DatadogAPIClient::V1::SLOThreshold

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **target** | **Float** | The target value for the service level indicator within the corresponding timeframe. |  |
| **target_display** | **String** | A string representation of the target that indicates its precision. It uses trailing zeros to show significant decimal places (e.g. &#x60;98.00&#x60;).  Always included in service level objective responses. Ignored in create/update requests. | [optional] |
| **timeframe** | [**SLOTimeframe**](SLOTimeframe.md) |  |  |
| **warning** | **Float** | The warning value for the service level objective. | [optional] |
| **warning_display** | **String** | A string representation of the warning target (see the description of the &#x60;target_display&#x60; field for details).  Included in service level objective responses if a warning target exists. Ignored in create/update requests. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOThreshold.new(
  target: 0.0,
  target_display: 99.9,
  timeframe: null,
  warning: null,
  warning_display: null
)
```

