# DatadogAPIClient::V1::FormulaAndFunctionApmDependencyStatsQueryDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_source** | [**FormulaAndFunctionApmDependencyStatsDataSource**](FormulaAndFunctionApmDependencyStatsDataSource.md) |  |  |
| **env** | **String** | APM environment. |  |
| **is_upstream** | **Boolean** | Determines whether stats for upstream or downstream dependencies should be queried. | [optional] |
| **name** | **String** | Name of query to use in formulas. | [optional] |
| **operation_name** | **String** | Name of operation on service. |  |
| **primary_tag_name** | **String** | The name of the second primary tag used within APM; required when &#x60;primary_tag_value&#x60; is specified. See https://docs.datadoghq.com/tracing/guide/setting_primary_tags_to_scope/#add-a-second-primary-tag-in-datadog. | [optional] |
| **primary_tag_value** | **String** | Filter APM data by the second primary tag. &#x60;primary_tag_name&#x60; must also be specified. | [optional] |
| **resource_name** | **String** | APM resource. |  |
| **service** | **String** | APM service. |  |
| **stat** | [**FormulaAndFunctionApmDependencyStatName**](FormulaAndFunctionApmDependencyStatName.md) |  |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::FormulaAndFunctionApmDependencyStatsQueryDefinition.new(
  data_source: null,
  env: staging,
  is_upstream: false,
  name: query_errors,
  operation_name: cassandra.query,
  primary_tag_name: datacenter,
  primary_tag_value: staging,
  resource_name: DELETE FROM foo WHERE baz &#x3D; ?,
  service: cassandra,
  stat: null
)
```

