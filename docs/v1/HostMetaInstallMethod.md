# DatadogAPIClient::V1::HostMetaInstallMethod

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **installer_version** | **String** | The installer version. | [optional] |
| **tool** | **String** | Tool used to install the agent. | [optional] |
| **tool_version** | **String** | The tool version. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::HostMetaInstallMethod.new(
  installer_version: install_script-1.7.1,
  tool: install_script,
  tool_version: install_script
)
```

