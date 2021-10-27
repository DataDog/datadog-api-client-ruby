# DatadogAPIClient::V2::LogsMetricFilter

## Properties

| Name      | Type       | Description                                         | Notes                              |
| --------- | ---------- | --------------------------------------------------- | ---------------------------------- |
| **query** | **String** | The search query - following the log search syntax. | [optional][default to &#39;*&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsMetricFilter.new(
  query: service:web* AND @http.status_code:[200 TO 299]
)
```
