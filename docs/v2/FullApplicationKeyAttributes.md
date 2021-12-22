# DatadogAPIClient::V2::FullApplicationKeyAttributes

## Properties

| Name           | Type                    | Description                                                                                                                                               | Notes                |
| -------------- | ----------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------- |
| **created_at** | **String**              | Creation date of the application key.                                                                                                                     | [optional][readonly] |
| **key**        | **String**              | The application key.                                                                                                                                      | [optional][readonly] |
| **last4**      | **String**              | The last four characters of the application key.                                                                                                          | [optional][readonly] |
| **name**       | **String**              | Name of the application key.                                                                                                                              | [optional]           |
| **scopes**     | **Array&lt;String&gt;** | Array of scopes to grant the application key. This feature is in private beta, please contact Datadog support to enable scopes for your application keys. | [optional]           |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::FullApplicationKeyAttributes.new(
  created_at: 2020-11-23T10:00:00.000Z,
  key: null,
  last4: abcd,
  name: Application Key for managing dashboards,
  scopes: [&quot;dashboards_read&quot;,&quot;dashboards_write&quot;,&quot;dashboards_public_share&quot;]
)
```
