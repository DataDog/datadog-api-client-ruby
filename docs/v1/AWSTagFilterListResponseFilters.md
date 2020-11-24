# DatadogAPIClient::V1::AWSTagFilterListResponseFilters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **namespace** | [**AWSNamespace**](AWSNamespace.md) |  | [optional] |
| **tag_filter_str** | **String** | The tag filter string. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::AWSTagFilterListResponseFilters.new(
  namespace: null,
  tag_filter_str: prod*
)
```

