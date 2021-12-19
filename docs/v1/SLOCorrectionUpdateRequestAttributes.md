# DatadogAPIClient::V1::SLOCorrectionUpdateRequestAttributes

## Properties

| Name            | Type                                                  | Description                                                                                                                                                                             | Notes      |
| --------------- | ----------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **category**    | [**SLOCorrectionCategory**](SLOCorrectionCategory.md) |                                                                                                                                                                                         | [optional] |
| **description** | **String**                                            | Description of the correction being made.                                                                                                                                               | [optional] |
| **duration**    | **Integer**                                           | Length of time (in seconds) for a specified &#x60;rrule&#x60; recurring SLO correction.                                                                                                 | [optional] |
| **\_end**       | **Integer**                                           | Ending time of the correction in epoch seconds.                                                                                                                                         | [optional] |
| **rrule**       | **String**                                            | The recurrence rules as defined in the iCalendar RFC 5545. The supported rules for SLO corrections are &#x60;FREQ&#x60;, &#x60;INTERVAL&#x60;, &#x60;COUNT&#x60; and &#x60;UNTIL&#x60;. | [optional] |
| **start**       | **Integer**                                           | Starting time of the correction in epoch seconds.                                                                                                                                       | [optional] |
| **timezone**    | **String**                                            | The timezone to display in the UI for the correction times (defaults to \&quot;UTC\&quot;).                                                                                             | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOCorrectionUpdateRequestAttributes.new(
  category: null,
  description: null,
  duration: 3600,
  _end: 1600000000,
  rrule: FREQ&#x3D;DAILY;INTERVAL&#x3D;10;COUNT&#x3D;5,
  start: 1600000000,
  timezone: UTC
)
```
