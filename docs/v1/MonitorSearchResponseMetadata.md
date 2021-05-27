# DatadogAPIClient::V1::MonitorSearchResponseMetadata

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **page** | **Integer** | The page to start paginating from. | [optional][readonly] |
| **page_count** | **Integer** | The number of pages. | [optional][readonly] |
| **per_page** | **Integer** | The number of monitors to return per page. | [optional][readonly] |
| **total_count** | **Integer** | The total number of monitors. | [optional][readonly] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::MonitorSearchResponseMetadata.new(
  page: null,
  page_count: null,
  per_page: null,
  total_count: null
)
```

