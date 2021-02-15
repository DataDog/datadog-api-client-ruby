# DatadogAPIClient::V1::DashboardTemplateVariable

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **default** | **String** | The default value for the template variable on dashboard load. | [optional] |
| **name** | **String** | The name of the variable. |  |
| **prefix** | **String** | The tag prefix associated with the variable. Only tags with this prefix appear in the variable drop-down. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::DashboardTemplateVariable.new(
  default: my-host,
  name: host1,
  prefix: host
)
```

