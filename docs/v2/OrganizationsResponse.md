# DatadogAPIClient::V2::OrganizationsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;Organization&gt;**](Organization.md) | Array of returned organizations. | [optional] |
| **meta** | [**ResponseMetaAttributes**](ResponseMetaAttributes.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::OrganizationsResponse.new(
  data: null,
  meta: null
)
```

