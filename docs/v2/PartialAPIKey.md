# DatadogAPIClient::V2::PartialAPIKey

## Properties

| Name              | Type                                                      | Description        | Notes                                     |
| ----------------- | --------------------------------------------------------- | ------------------ | ----------------------------------------- |
| **attributes**    | [**PartialAPIKeyAttributes**](PartialAPIKeyAttributes.md) |                    | [optional]                                |
| **id**            | **String**                                                | ID of the API key. | [optional]                                |
| **relationships** | [**APIKeyRelationships**](APIKeyRelationships.md)         |                    | [optional]                                |
| **type**          | [**APIKeysType**](APIKeysType.md)                         |                    | [optional][default to &#39;api_keys&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::PartialAPIKey.new(
  attributes: null,
  id: null,
  relationships: null,
  type: null
)
```
