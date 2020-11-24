# DatadogAPIClient::V1::AWSLogsAsyncResponseErrors

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | Code properties | [optional] |
| **message** | **String** | Message content. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::AWSLogsAsyncResponseErrors.new(
  code: no_such_config,
  message: AWS account 12345 has no lambda config to update
)
```

