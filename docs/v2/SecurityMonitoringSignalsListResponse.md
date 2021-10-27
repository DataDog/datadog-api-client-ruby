# DatadogAPIClient::V2::SecurityMonitoringSignalsListResponse

## Properties

| Name      | Type                                                                                            | Description                                        | Notes      |
| --------- | ----------------------------------------------------------------------------------------------- | -------------------------------------------------- | ---------- |
| **data**  | [**Array&lt;SecurityMonitoringSignal&gt;**](SecurityMonitoringSignal.md)                        | An array of security signals matching the request. | [optional] |
| **links** | [**SecurityMonitoringSignalsListResponseLinks**](SecurityMonitoringSignalsListResponseLinks.md) |                                                    | [optional] |
| **meta**  | [**SecurityMonitoringSignalsListResponseMeta**](SecurityMonitoringSignalsListResponseMeta.md)   |                                                    | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityMonitoringSignalsListResponse.new(
  data: null,
  links: null,
  meta: null
)
```
