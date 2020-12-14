# DatadogAPIClient::V2::LogsQueryOptions

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **time_offset** | **Integer** | The time offset (in seconds) to apply to the query. | [optional] |
| **timezone** | **String** | The timezone can be specified both as an offset, for example: \&quot;UTC+03:00\&quot;. | [optional][default to &#39;UTC&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsQueryOptions.new(
  time_offset: null,
  timezone: GMT
)
```

