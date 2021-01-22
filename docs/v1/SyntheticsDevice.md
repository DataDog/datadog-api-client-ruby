# DatadogAPIClient::V1::SyntheticsDevice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **height** | **Integer** | Screen height of the device. |  |
| **id** | [**SyntheticsDeviceID**](SyntheticsDeviceID.md) |  |  |
| **is_mobile** | **Boolean** | Whether or not the device is a mobile. | [optional] |
| **name** | **String** | The device name. |  |
| **width** | **Integer** | Screen width of the device. |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsDevice.new(
  height: 0,
  id: null,
  is_mobile: null,
  name: ,
  width: 0
)
```

