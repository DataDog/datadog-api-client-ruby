# DatadogAPIClient::V1::SyntheticsCIBatchMetadataGit

## Properties

| Name           | Type       | Description      | Notes      |
| -------------- | ---------- | ---------------- | ---------- |
| **branch**     | **String** | The branch name. | [optional] |
| **commit_sha** | **String** | The commit SHA.  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsCIBatchMetadataGit.new(
  branch: null,
  commit_sha: null
)
```
