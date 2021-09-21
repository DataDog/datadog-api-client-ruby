# DatadogAPIClient::V1::FunnelQuery

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_source** | [**FunnelSource**](FunnelSource.md) |  | [default to &#39;rum&#39;] |
| **query_string** | **String** | The widget query. |  |
| **steps** | **Array&lt;Object&gt;** | List of funnel steps. |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::FunnelQuery.new(
  data_source: null,
  query_string: @browser.name:Chrome,
  steps: null
)
```

