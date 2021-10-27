# DatadogAPIClient::V2::SecurityFilterUpdateData

## Properties

| Name           | Type                                                                    | Description | Notes                                   |
| -------------- | ----------------------------------------------------------------------- | ----------- | --------------------------------------- |
| **attributes** | [**SecurityFilterUpdateAttributes**](SecurityFilterUpdateAttributes.md) |             |                                         |
| **type**       | [**SecurityFilterType**](SecurityFilterType.md)                         |             | [default to &#39;security_filters&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityFilterUpdateData.new(
  attributes: null,
  type: null
)
```
