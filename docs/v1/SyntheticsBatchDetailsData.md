# DatadogAPIClient::V1::SyntheticsBatchDetailsData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **metadata** | [**SyntheticsCIBatchMetadata**](SyntheticsCIBatchMetadata.md) |  | [optional] |
| **results** | [**Array&lt;SyntheticsBatchResult&gt;**](SyntheticsBatchResult.md) | List of results for the batch. | [optional] |
| **status** | [**SyntheticsStatus**](SyntheticsStatus.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsBatchDetailsData.new(
  metadata: null,
  results: null,
  status: null
)
```

