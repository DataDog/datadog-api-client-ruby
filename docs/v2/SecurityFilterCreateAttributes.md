# DatadogAPIClient::V2::SecurityFilterCreateAttributes

## Properties

| Name                   | Type                                                                               | Description                                                      | Notes |
| ---------------------- | ---------------------------------------------------------------------------------- | ---------------------------------------------------------------- | ----- |
| **exclusion_filters**  | [**Array&lt;SecurityFilterExclusionFilter&gt;**](SecurityFilterExclusionFilter.md) | Exclusion filters to exclude some logs from the security filter. |       |
| **filtered_data_type** | [**SecurityFilterFilteredDataType**](SecurityFilterFilteredDataType.md)            |                                                                  |       |
| **is_enabled**         | **Boolean**                                                                        | Whether the security filter is enabled.                          |       |
| **name**               | **String**                                                                         | The name of the security filter.                                 |       |
| **query**              | **String**                                                                         | The query of the security filter.                                |       |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityFilterCreateAttributes.new(
  exclusion_filters: [{&quot;name&quot;:&quot;Exclude staging&quot;,&quot;query&quot;:&quot;source:staging&quot;}],
  filtered_data_type: null,
  is_enabled: true,
  name: Custom security filter,
  query: service:api
)
```
