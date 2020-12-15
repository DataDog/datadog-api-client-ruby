# DatadogAPIClient::V1::EventListResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **events** | [**Array&lt;Event&gt;**](Event.md) | An array of events. | [optional] |
| **status** | **String** | A status. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::EventListResponse.new(
  events: null,
  status: null
)
```

