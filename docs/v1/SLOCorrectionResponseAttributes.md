# DatadogAPIClient::V1::SLOCorrectionResponseAttributes

## Properties

| Name            | Type                                                  | Description                                                                                 | Notes      |
| --------------- | ----------------------------------------------------- | ------------------------------------------------------------------------------------------- | ---------- |
| **category**    | [**SLOCorrectionCategory**](SLOCorrectionCategory.md) |                                                                                             | [optional] |
| **creator**     | [**Creator**](Creator.md)                             |                                                                                             | [optional] |
| **description** | **String**                                            | Description of the correction being made.                                                   | [optional] |
| **\_end**       | **Integer**                                           | Ending time of the correction in epoch seconds.                                             | [optional] |
| **slo_id**      | **String**                                            | ID of the SLO that this correction will be applied to.                                      | [optional] |
| **start**       | **Integer**                                           | Starting time of the correction in epoch seconds.                                           | [optional] |
| **timezone**    | **String**                                            | The timezone to display in the UI for the correction times (defaults to \&quot;UTC\&quot;). | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOCorrectionResponseAttributes.new(
  category: null,
  creator: null,
  description: null,
  _end: null,
  slo_id: null,
  start: null,
  timezone: null
)
```
