# DatadogAPIClient::V2::SecurityFilterUpdateAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exclusion_filters** | [**Array&lt;SecurityFilterExclusionFilter&gt;**](SecurityFilterExclusionFilter.md) | Exclusion filters to exclude some logs from the security filter. | [optional] |
| **filtered_data_type** | [**SecurityFilterFilteredDataType**](SecurityFilterFilteredDataType.md) |  | [optional] |
| **is_enabled** | **Boolean** | Whether the security filter is enabled. | [optional] |
| **name** | **String** | The name of the security filter. | [optional] |
| **query** | **String** | The query of the security filter. | [optional] |
| **version** | **Integer** | The version of the security filter to update. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityFilterUpdateAttributes.new(
  exclusion_filters: [],
  filtered_data_type: null,
  is_enabled: true,
  name: Custom security filter,
  query: service:api,
  version: 1
)
```

