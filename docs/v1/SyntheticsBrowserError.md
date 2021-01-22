# DatadogAPIClient::V1::SyntheticsBrowserError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the error. |  |
| **name** | **String** | Name of the error. |  |
| **status_code** | **Integer** | Status Code of the error. | [optional] |
| **type** | [**SyntheticsBrowserErrorType**](SyntheticsBrowserErrorType.md) |  |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsBrowserError.new(
  description: ,
  name: ,
  status_code: null,
  type: null
)
```

