# DatadogAPIClient::V2::SecurityMonitoringSignalsListResponseLinks

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_next** | **String** | The link for the next set of results. **Note**: The request can also be made using the POST endpoint. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityMonitoringSignalsListResponseLinks.new(
  _next: https://app.datadoghq.com/api/v2/security_monitoring/signals?filter[query]&#x3D;foo&amp;page[cursor]&#x3D;eyJzdGFydEF0IjoiQVFBQUFYS2tMS3pPbm40NGV3QUFBQUJCV0V0clRFdDZVbG8zY3pCRmNsbHJiVmxDWlEifQ&#x3D;&#x3D;
)
```

