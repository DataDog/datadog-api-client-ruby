# DatadogAPIClient::V2::ListApplicationKeysResponse

## Properties

| Name         | Type                                                                                         | Description                                      | Notes      |
| ------------ | -------------------------------------------------------------------------------------------- | ------------------------------------------------ | ---------- |
| **data**     | [**Array&lt;PartialApplicationKey&gt;**](PartialApplicationKey.md)                           | Array of application keys.                       | [optional] |
| **included** | [**Array&lt;ApplicationKeyResponseIncludedItem&gt;**](ApplicationKeyResponseIncludedItem.md) | Array of objects related to the application key. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::ListApplicationKeysResponse.new(
  data: null,
  included: null
)
```
