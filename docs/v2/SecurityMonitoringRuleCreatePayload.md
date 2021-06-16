# DatadogAPIClient::V2::SecurityMonitoringRuleCreatePayload

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **cases** | [**Array&lt;SecurityMonitoringRuleCaseCreate&gt;**](SecurityMonitoringRuleCaseCreate.md) | Cases for generating signals. |  |
| **filters** | [**Array&lt;SecurityMonitoringFilter&gt;**](SecurityMonitoringFilter.md) | Additional queries to filter matched events before they are processed. | [optional] |
| **has_extended_title** | **Boolean** | Whether the notifications include the triggering group-by values in their title. | [optional] |
| **is_enabled** | **Boolean** | Whether the rule is enabled. |  |
| **message** | **String** | Message for generated signals. |  |
| **name** | **String** | The name of the rule. |  |
| **options** | [**SecurityMonitoringRuleOptions**](SecurityMonitoringRuleOptions.md) |  |  |
| **queries** | [**Array&lt;SecurityMonitoringRuleQueryCreate&gt;**](SecurityMonitoringRuleQueryCreate.md) | Queries for selecting logs which are part of the rule. |  |
| **tags** | **Array&lt;String&gt;** | Tags for generated signals. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityMonitoringRuleCreatePayload.new(
  cases: [],
  filters: null,
  has_extended_title: true,
  is_enabled: true,
  message: ,
  name: My security monitoring rule.,
  options: null,
  queries: [],
  tags: [&quot;env:prod&quot;,&quot;team:security&quot;]
)
```

