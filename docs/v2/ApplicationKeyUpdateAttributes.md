# DatadogAPIClient::V2::ApplicationKeyUpdateAttributes

## Properties

| Name       | Type                    | Description                                                                                                                                               | Notes      |
| ---------- | ----------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **name**   | **String**              | Name of the application key.                                                                                                                              | [optional] |
| **scopes** | **Array&lt;String&gt;** | Array of scopes to grant the application key. This feature is in private beta, please contact Datadog support to enable scopes for your application keys. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::ApplicationKeyUpdateAttributes.new(
  name: Application Key for managing dashboards,
  scopes: [&quot;dashboards_read&quot;,&quot;dashboards_write&quot;,&quot;dashboards_public_share&quot;]
)
```
