# DatadogAPIClient::V1::SLOCorrectionCreateRequestAttributes

## Properties

| Name            | Type                                                  | Description                                                                                 | Notes      |
| --------------- | ----------------------------------------------------- | ------------------------------------------------------------------------------------------- | ---------- |
| **category**    | [**SLOCorrectionCategory**](SLOCorrectionCategory.md) |                                                                                             |            |
| **description** | **String**                                            | Description of the correction being made.                                                   | [optional] |
| **duration**    | **Integer**                                           | Length of time (in seconds) for a specified &#x60;rrule&#x60; recurring SLO correction.     | [optional] |
| **\_end**       | **Integer**                                           | Ending time of the correction in epoch seconds.                                             | [optional] |
| **rrule**       | **String**                                            | Recurrence rules as defined in the iCalendar RFC 5545.                                      | [optional] |
| **slo_id**      | **String**                                            | ID of the SLO that this correction will be applied to.                                      |            |
| **start**       | **Integer**                                           | Starting time of the correction in epoch seconds.                                           |            |
| **timezone**    | **String**                                            | The timezone to display in the UI for the correction times (defaults to \&quot;UTC\&quot;). | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOCorrectionCreateRequestAttributes.new(
  category: null,
  description: null,
  duration: 1600000000,
  _end: 1600000000,
  rrule: RRULE:FREQ&#x3D;DAILY;INTERVAL&#x3D;10;COUNT&#x3D;5,
  slo_id: sloId,
  start: 1600000000,
  timezone: UTC
)
```
