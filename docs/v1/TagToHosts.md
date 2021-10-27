# DatadogAPIClient::V1::TagToHosts

## Properties

| Name     | Type                                        | Description                          | Notes      |
| -------- | ------------------------------------------- | ------------------------------------ | ---------- |
| **tags** | **Hash&lt;String, Array&lt;String&gt;&gt;** | A list of tags to apply to the host. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::TagToHosts.new(
  tags: null
)
```
