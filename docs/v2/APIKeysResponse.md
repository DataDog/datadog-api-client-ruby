# DatadogAPIClient::V2::APIKeysResponse

## Properties

| Name         | Type                                                                         | Description                              | Notes      |
| ------------ | ---------------------------------------------------------------------------- | ---------------------------------------- | ---------- |
| **data**     | [**Array&lt;PartialAPIKey&gt;**](PartialAPIKey.md)                           | Array of API keys.                       | [optional] |
| **included** | [**Array&lt;APIKeyResponseIncludedItem&gt;**](APIKeyResponseIncludedItem.md) | Array of objects related to the API key. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::APIKeysResponse.new(
  data: null,
  included: null
)
```
