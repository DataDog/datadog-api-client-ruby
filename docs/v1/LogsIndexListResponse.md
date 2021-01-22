# DatadogAPIClient::V1::LogsIndexListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **indexes** | [**Array&lt;LogsIndex&gt;**](LogsIndex.md) | Array of Log index configurations. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsIndexListResponse.new(
  indexes: null
)
```

