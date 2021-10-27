# DatadogAPIClient::V2::SecurityFilter

## Properties

| Name           | Type                                                        | Description                    | Notes                                             |
| -------------- | ----------------------------------------------------------- | ------------------------------ | ------------------------------------------------- |
| **attributes** | [**SecurityFilterAttributes**](SecurityFilterAttributes.md) |                                | [optional]                                        |
| **id**         | **String**                                                  | The ID of the security filter. | [optional]                                        |
| **type**       | [**SecurityFilterType**](SecurityFilterType.md)             |                                | [optional][default to &#39;security_filters&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityFilter.new(
  attributes: null,
  id: 3dd-0uc-h1s,
  type: null
)
```
