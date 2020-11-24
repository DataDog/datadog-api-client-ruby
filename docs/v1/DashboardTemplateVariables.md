# DatadogAPIClient::V1::DashboardTemplateVariables

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default** | **String** | The default value for the template variable on dashboard load. | [optional] |
| **name** | **String** | The name of the variable. |  |
| **prefix** | **String** | The tag prefix associated with the variable. Only tags with this prefix appear in the variable drop-down. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::DashboardTemplateVariables.new(
  default: my-host,
  name: host1,
  prefix: host
)
```

