# DatadogAPIClient::V1::SyntheticsPrivateLocation

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **description** | **String** | Description of the private location. |  |
| **id** | **String** | Unique identifier of the private location. | [optional][readonly] |
| **name** | **String** | Name of the private location. |  |
| **secrets** | [**SyntheticsPrivateLocationSecrets**](SyntheticsPrivateLocationSecrets.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** | Array of tags attached to the private location. |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsPrivateLocation.new(
  description: Description of private location,
  id: null,
  name: New private location,
  secrets: null,
  tags: [&quot;team:front&quot;]
)
```

