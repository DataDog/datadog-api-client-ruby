# DatadogAPIClient::V1::SyntheticsCIBatchMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ci** | [**SyntheticsCIBatchMetadataCI**](SyntheticsCIBatchMetadataCI.md) |  | [optional] |
| **git** | [**SyntheticsCIBatchMetadataGit**](SyntheticsCIBatchMetadataGit.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsCIBatchMetadata.new(
  ci: null,
  git: null
)
```

