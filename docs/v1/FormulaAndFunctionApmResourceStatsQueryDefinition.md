# DatadogAPIClient::V1::FormulaAndFunctionApmResourceStatsQueryDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data_source** | [**FormulaAndFunctionApmResourceStatsDataSource**](FormulaAndFunctionApmResourceStatsDataSource.md) |  |  |
| **env** | **String** | APM environment. |  |
| **group_by** | **Array&lt;String&gt;** | Array of fields to group results by. | [optional] |
| **name** | **String** | Name of this query to use in formulas. |  |
| **operation_name** | **String** | Name of operation on service. | [optional] |
| **primary_tag_name** | **String** | Name of the second primary tag used within APM. Required when &#x60;primary_tag_value&#x60; is specified. See https://docs.datadoghq.com/tracing/guide/setting_primary_tags_to_scope/#add-a-second-primary-tag-in-datadog | [optional] |
| **primary_tag_value** | **String** | Value of the second primary tag by which to filter APM data. &#x60;primary_tag_name&#x60; must also be specified. | [optional] |
| **resource_name** | **String** | APM resource name. | [optional] |
| **service** | **String** | APM service name. |  |
| **stat** | [**FormulaAndFunctionApmResourceStatName**](FormulaAndFunctionApmResourceStatName.md) |  |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::FormulaAndFunctionApmResourceStatsQueryDefinition.new(
  data_source: null,
  env: staging,
  group_by: null,
  name: query_errors,
  operation_name: cassandra.query,
  primary_tag_name: datacenter,
  primary_tag_value: us-east-az,
  resource_name: Admin::ProductsController#create,
  service: web-store,
  stat: null
)
```

