# DatadogAPIClient::V1::CheckCanDeleteSLOResponseData

## Properties

| Name   | Type                    | Description                                        | Notes      |
| ------ | ----------------------- | -------------------------------------------------- | ---------- |
| **ok** | **Array&lt;String&gt;** | An array of of SLO IDs that can be safely deleted. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::CheckCanDeleteSLOResponseData.new(
  ok: null
)
```
