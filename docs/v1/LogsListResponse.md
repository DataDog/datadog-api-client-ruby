# DatadogAPIClient::V1::LogsListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **logs** | [**Array&lt;Log&gt;**](Log.md) | Array of logs matching the request and the &#x60;nextLogId&#x60; if sent. | [optional] |
| **next_log_id** | **String** | Hash identifier of the next log to return in the list. This parameter is used for the pagination feature. | [optional] |
| **status** | **String** | Status of the response. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsListResponse.new(
  logs: null,
  next_log_id: null,
  status: null
)
```

