# DatadogAPIClient::V1::AWSLogsAsyncResponse

## Properties

| Name       | Type                                                       | Description               | Notes      |
| ---------- | ---------------------------------------------------------- | ------------------------- | ---------- |
| **errors** | [**Array&lt;AWSLogsAsyncError&gt;**](AWSLogsAsyncError.md) | List of errors.           | [optional] |
| **status** | **String**                                                 | Status of the properties. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::AWSLogsAsyncResponse.new(
  errors: null,
  status: created
)
```
