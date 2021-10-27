# DatadogAPIClient::V2::OrganizationAttributes

## Properties

| Name            | Type        | Description                                       | Notes      |
| --------------- | ----------- | ------------------------------------------------- | ---------- |
| **created_at**  | **Time**    | Creation time of the organization.                | [optional] |
| **description** | **String**  | Description of the organization.                  | [optional] |
| **disabled**    | **Boolean** | Whether or not the organization is disabled.      | [optional] |
| **modified_at** | **Time**    | Time of last organization modification.           | [optional] |
| **name**        | **String**  | Name of the organization.                         | [optional] |
| **public_id**   | **String**  | Public ID of the organization.                    | [optional] |
| **sharing**     | **String**  | Sharing type of the organization.                 | [optional] |
| **url**         | **String**  | URL of the site that this organization exists at. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::OrganizationAttributes.new(
  created_at: null,
  description: null,
  disabled: null,
  modified_at: null,
  name: null,
  public_id: null,
  sharing: null,
  url: null
)
```
