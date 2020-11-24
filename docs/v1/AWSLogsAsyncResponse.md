# DatadogAPIClient::V1::AWSLogsAsyncResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **errors** | [**Array&lt;AWSLogsAsyncResponseErrors&gt;**](AWSLogsAsyncResponseErrors.md) | List of errors. | [optional] |
| **status** | **String** | Status of the properties. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::AWSLogsAsyncResponse.new(
  errors: null,
  status: created
)
```

