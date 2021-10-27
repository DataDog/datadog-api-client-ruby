# DatadogAPIClient::V2::UserAttributes

## Properties

| Name                | Type        | Description                            | Notes      |
| ------------------- | ----------- | -------------------------------------- | ---------- |
| **created_at**      | **Time**    | Creation time of the user.             | [optional] |
| **disabled**        | **Boolean** | Whether the user is disabled.          | [optional] |
| **email**           | **String**  | Email of the user.                     | [optional] |
| **handle**          | **String**  | Handle of the user.                    | [optional] |
| **icon**            | **String**  | URL of the user&#39;s icon.            | [optional] |
| **modified_at**     | **Time**    | Time that the user was last modified.  | [optional] |
| **name**            | **String**  | Name of the user.                      | [optional] |
| **service_account** | **Boolean** | Whether the user is a service account. | [optional] |
| **status**          | **String**  | Status of the user.                    | [optional] |
| **title**           | **String**  | Title of the user.                     | [optional] |
| **verified**        | **Boolean** | Whether the user is verified.          | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::UserAttributes.new(
  created_at: null,
  disabled: null,
  email: null,
  handle: null,
  icon: null,
  modified_at: null,
  name: null,
  service_account: null,
  status: null,
  title: null,
  verified: null
)
```
