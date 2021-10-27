# DatadogAPIClient::V2::SecurityMonitoringSignalListRequestPage

## Properties

| Name       | Type        | Description                                                        | Notes                     |
| ---------- | ----------- | ------------------------------------------------------------------ | ------------------------- |
| **cursor** | **String**  | A list of results using the cursor provided in the previous query. | [optional]                |
| **limit**  | **Integer** | The maximum number of security signals in the response.            | [optional][default to 10] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityMonitoringSignalListRequestPage.new(
  cursor: eyJzdGFydEF0IjoiQVFBQUFYS2tMS3pPbm40NGV3QUFBQUJCV0V0clRFdDZVbG8zY3pCRmNsbHJiVmxDWlEifQ&#x3D;&#x3D;,
  limit: 25
)
```
