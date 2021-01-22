# DatadogAPIClient::V1::SyntheticsCITestMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ci** | [**SyntheticsCITestMetadataCi**](SyntheticsCITestMetadataCi.md) |  | [optional] |
| **git** | [**SyntheticsCITestMetadataGit**](SyntheticsCITestMetadataGit.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsCITestMetadata.new(
  ci: null,
  git: null
)
```

