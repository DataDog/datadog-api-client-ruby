# DatadogAPIClient::V2::SecurityMonitoringRuleUpdatePayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cases** | [**Array&lt;SecurityMonitoringRuleCase&gt;**](SecurityMonitoringRuleCase.md) | Cases for generating signals. | [optional] |
| **filters** | [**Array&lt;SecurityMonitoringFilter&gt;**](SecurityMonitoringFilter.md) | Additional queries to filter matched events before they are processed. | [optional] |
| **is_enabled** | **Boolean** | Whether the rule is enabled. | [optional] |
| **message** | **String** | Message for generated signals. | [optional] |
| **name** | **String** | Name of the rule. | [optional] |
| **options** | [**SecurityMonitoringRuleOptions**](SecurityMonitoringRuleOptions.md) |  | [optional] |
| **queries** | [**Array&lt;SecurityMonitoringRuleQuery&gt;**](SecurityMonitoringRuleQuery.md) | Queries for selecting logs which are part of the rule. | [optional] |
| **tags** | **Array&lt;String&gt;** | Tags for generated signals. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityMonitoringRuleUpdatePayload.new(
  cases: null,
  filters: null,
  is_enabled: null,
  message: null,
  name: null,
  options: null,
  queries: null,
  tags: null
)
```

