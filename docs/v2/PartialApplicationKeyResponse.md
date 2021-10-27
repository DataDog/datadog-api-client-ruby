# DatadogAPIClient::V2::PartialApplicationKeyResponse

## Properties

| Name         | Type                                                                                         | Description                                      | Notes      |
| ------------ | -------------------------------------------------------------------------------------------- | ------------------------------------------------ | ---------- |
| **data**     | [**PartialApplicationKey**](PartialApplicationKey.md)                                        |                                                  | [optional] |
| **included** | [**Array&lt;ApplicationKeyResponseIncludedItem&gt;**](ApplicationKeyResponseIncludedItem.md) | Array of objects related to the application key. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::PartialApplicationKeyResponse.new(
  data: null,
  included: null
)
```
