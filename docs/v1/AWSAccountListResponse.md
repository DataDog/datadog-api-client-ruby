# DatadogAPIClient::V1::AWSAccountListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accounts** | [**Array&lt;AWSAccount&gt;**](AWSAccount.md) | List of enabled AWS accounts. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::AWSAccountListResponse.new(
  accounts: null
)
```

