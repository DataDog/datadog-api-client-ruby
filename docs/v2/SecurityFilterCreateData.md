# DatadogAPIClient::V2::SecurityFilterCreateData

## Properties

| Name           | Type                                                                    | Description | Notes                                   |
| -------------- | ----------------------------------------------------------------------- | ----------- | --------------------------------------- |
| **attributes** | [**SecurityFilterCreateAttributes**](SecurityFilterCreateAttributes.md) |             |                                         |
| **type**       | [**SecurityFilterType**](SecurityFilterType.md)                         |             | [default to &#39;security_filters&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityFilterCreateData.new(
  attributes: null,
  type: null
)
```
