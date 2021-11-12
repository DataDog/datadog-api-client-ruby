# DatadogAPIClient::V1::SyntheticsTriggerTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**SyntheticsCIBatchMetadata**](SyntheticsCIBatchMetadata.md) |  | [optional] |
| **public_id** | **String** | The public ID of the Synthetics test to trigger. |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsTriggerTest.new(
  metadata: null,
  public_id: aaa-aaa-aaa
)
```

