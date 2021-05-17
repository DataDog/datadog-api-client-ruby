# DatadogAPIClient::V2::SecurityFilterAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **exclusion_filters** | [**Array&lt;SecurityFilterExclusionFilterResponse&gt;**](SecurityFilterExclusionFilterResponse.md) | The list of exclusion filters applied in this security filter. | [optional] |
| **filtered_data_type** | [**SecurityFilterFilteredDataType**](SecurityFilterFilteredDataType.md) |  | [optional] |
| **is_builtin** | **Boolean** | Whether the security filter is the built-in filter. | [optional] |
| **is_enabled** | **Boolean** | Whether the security filter is enabled. | [optional] |
| **name** | **String** | The security filter name. | [optional] |
| **query** | **String** | The security filter query. Logs accepted by this query will be accepted by this filter. | [optional] |
| **version** | **Integer** | The version of the security filter. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityFilterAttributes.new(
  exclusion_filters: null,
  filtered_data_type: null,
  is_builtin: false,
  is_enabled: false,
  name: Custom security filter,
  query: service:api,
  version: 1
)
```

