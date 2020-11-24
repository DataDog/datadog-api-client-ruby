# DatadogAPIClient::V2::Organization

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**OrganizationAttributes**](OrganizationAttributes.md) |  | [optional] |
| **id** | **String** | ID of the organization. | [optional] |
| **type** | [**OrganizationsType**](OrganizationsType.md) |  | [default to &#39;orgs&#39;] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::Organization.new(
  attributes: null,
  id: null,
  type: null
)
```

