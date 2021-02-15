# DatadogAPIClient::V1::LogQueryDefinitionGroupBy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **facet** | **String** | Facet name. |  |
| **limit** | **Integer** | Maximum number of items in the group. | [optional] |
| **sort** | [**LogQueryDefinitionGroupBySort**](LogQueryDefinitionGroupBySort.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogQueryDefinitionGroupBy.new(
  facet: resource_name,
  limit: 50,
  sort: null
)
```

