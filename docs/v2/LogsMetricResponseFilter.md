# DatadogAPIClient::V2::LogsMetricResponseFilter

## Properties

| Name      | Type       | Description                                         | Notes      |
| --------- | ---------- | --------------------------------------------------- | ---------- |
| **query** | **String** | The search query - following the log search syntax. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsMetricResponseFilter.new(
  query: service:web* AND @http.status_code:[200 TO 299]
)
```
