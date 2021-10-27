# DatadogAPIClient::V1::DashboardTemplateVariablePreset

## Properties

| Name                   | Type                                                                                             | Description               | Notes      |
| ---------------------- | ------------------------------------------------------------------------------------------------ | ------------------------- | ---------- |
| **name**               | **String**                                                                                       | The name of the variable. | [optional] |
| **template_variables** | [**Array&lt;DashboardTemplateVariablePresetValue&gt;**](DashboardTemplateVariablePresetValue.md) | List of variables.        | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::DashboardTemplateVariablePreset.new(
  name: null,
  template_variables: null
)
```
