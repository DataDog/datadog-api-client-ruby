# DatadogAPIClient::V1::LogsExclusion

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **filter** | [**LogsExclusionFilter**](LogsExclusionFilter.md) |  | [optional] |
| **is_enabled** | **Boolean** | Whether or not the exclusion filter is active. | [optional] |
| **name** | **String** | Name of the index exclusion filter. |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsExclusion.new(
  filter: null,
  is_enabled: null,
  name: payment
)
```

