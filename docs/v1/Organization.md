# DatadogAPIClient::V1::Organization

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **billing** | [**OrganizationBilling**](OrganizationBilling.md) |  | [optional] |
| **created** | **String** | Date of the organization creation. | [optional][readonly] |
| **description** | **String** | Description of the organization. | [optional] |
| **name** | **String** | The name of the new child-organization, limited to 32 characters. | [optional] |
| **public_id** | **String** | The &#x60;public_id&#x60; of the organization you are operating within. | [optional] |
| **settings** | [**OrganizationSettings**](OrganizationSettings.md) |  | [optional] |
| **subscription** | [**OrganizationSubscription**](OrganizationSubscription.md) |  | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::Organization.new(
  billing: null,
  created: 2019-09-26T17:28:28Z,
  description: some description,
  name: New child org,
  public_id: abcdef12345,
  settings: null,
  subscription: null
)
```

