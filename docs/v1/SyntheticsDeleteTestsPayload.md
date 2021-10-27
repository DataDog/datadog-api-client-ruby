# DatadogAPIClient::V1::SyntheticsDeleteTestsPayload

## Properties

| Name           | Type                    | Description                                        | Notes      |
| -------------- | ----------------------- | -------------------------------------------------- | ---------- |
| **public_ids** | **Array&lt;String&gt;** | An array of Synthetic test IDs you want to delete. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsDeleteTestsPayload.new(
  public_ids: []
)
```
