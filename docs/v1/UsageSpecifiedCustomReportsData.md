# DatadogAPIClient::V1::UsageSpecifiedCustomReportsData

## Properties

| Name           | Type                                                                                  | Description                            | Notes                                    |
| -------------- | ------------------------------------------------------------------------------------- | -------------------------------------- | ---------------------------------------- |
| **attributes** | [**UsageSpecifiedCustomReportsAttributes**](UsageSpecifiedCustomReportsAttributes.md) |                                        | [optional]                               |
| **id**         | **String**                                                                            | The date for specified custom reports. | [optional]                               |
| **type**       | [**UsageReportsType**](UsageReportsType.md)                                           |                                        | [optional][default to &#39;reports&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::UsageSpecifiedCustomReportsData.new(
  attributes: null,
  id: null,
  type: null
)
```
