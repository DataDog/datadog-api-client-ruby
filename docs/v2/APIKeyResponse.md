# DatadogAPIClient::V2::APIKeyResponse

## Properties

| Name         | Type                                                                         | Description                              | Notes      |
| ------------ | ---------------------------------------------------------------------------- | ---------------------------------------- | ---------- |
| **data**     | [**FullAPIKey**](FullAPIKey.md)                                              |                                          | [optional] |
| **included** | [**Array&lt;APIKeyResponseIncludedItem&gt;**](APIKeyResponseIncludedItem.md) | Array of objects related to the API key. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::APIKeyResponse.new(
  data: null,
  included: null
)
```
