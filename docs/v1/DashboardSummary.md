# DatadogAPIClient::V1::DashboardSummary

## Properties

| Name           | Type                                                                         | Description                    | Notes      |
| -------------- | ---------------------------------------------------------------------------- | ------------------------------ | ---------- |
| **dashboards** | [**Array&lt;DashboardSummaryDefinition&gt;**](DashboardSummaryDefinition.md) | List of dashboard definitions. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::DashboardSummary.new(
  dashboards: null
)
```
