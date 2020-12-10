# DatadogAPIClient::V2::RolesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;Role&gt;**](Role.md) | Array of returned roles. | [optional] |
| **meta** | [**ResponseMetaAttributes**](ResponseMetaAttributes.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::RolesResponse.new(
  data: null,
  meta: null
)
```

