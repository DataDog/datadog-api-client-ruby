# DatadogAPIClient::V1::SLOCorrectionResponseAttributes

## Properties

| Name            | Type                                                                                      | Description                                                                                 | Notes      |
| --------------- | ----------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ---------- |
| **category**    | [**SLOCorrectionCategory**](SLOCorrectionCategory.md)                                     |                                                                                             | [optional] |
| **created_at**  | **Integer**                                                                               | The epoch timestamp of when the correction was created at                                   | [optional] |
| **creator**     | [**Creator**](Creator.md)                                                                 |                                                                                             | [optional] |
| **description** | **String**                                                                                | Description of the correction being made.                                                   | [optional] |
| **duration**    | **Integer**                                                                               | Length of time (in seconds) for a specified &#x60;rrule&#x60; recurring SLO correction.     | [optional] |
| **\_end**       | **Integer**                                                                               | Ending time of the correction in epoch seconds.                                             | [optional] |
| **modified_at** | **Integer**                                                                               | The epoch timestamp of when the correction was modified at                                  | [optional] |
| **modifier**    | [**SLOCorrectionResponseAttributesModifier**](SLOCorrectionResponseAttributesModifier.md) |                                                                                             | [optional] |
| **rrule**       | **String**                                                                                | Recurrence rules as defined in the iCalendar RFC 5545.                                      | [optional] |
| **slo_id**      | **String**                                                                                | ID of the SLO that this correction will be applied to.                                      | [optional] |
| **start**       | **Integer**                                                                               | Starting time of the correction in epoch seconds.                                           | [optional] |
| **timezone**    | **String**                                                                                | The timezone to display in the UI for the correction times (defaults to \&quot;UTC\&quot;). | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOCorrectionResponseAttributes.new(
  category: null,
  created_at: null,
  creator: null,
  description: null,
  duration: 3600,
  _end: null,
  modified_at: null,
  modifier: null,
  rrule: RRULE:FREQ&#x3D;DAILY;INTERVAL&#x3D;10;COUNT&#x3D;5,
  slo_id: null,
  start: null,
  timezone: null
)
```
