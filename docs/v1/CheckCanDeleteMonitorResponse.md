# DatadogAPIClient::V1::CheckCanDeleteMonitorResponse

## Properties

| Name       | Type                                                                          | Description                                                      | Notes      |
| ---------- | ----------------------------------------------------------------------------- | ---------------------------------------------------------------- | ---------- |
| **data**   | [**CheckCanDeleteMonitorResponseData**](CheckCanDeleteMonitorResponseData.md) |                                                                  |            |
| **errors** | **Hash&lt;String, Array&lt;String&gt;&gt;**                                   | A mapping of Monitor ID to strings denoting where it&#39;s used. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::CheckCanDeleteMonitorResponse.new(
  data: null,
  errors: null
)
```
