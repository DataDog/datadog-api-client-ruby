# DatadogAPIClient::V2::MetricAllTagsAttributes

## Properties

| Name     | Type                    | Description                      | Notes      |
| -------- | ----------------------- | -------------------------------- | ---------- |
| **tags** | **Array&lt;String&gt;** | List of indexed tag value pairs. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::MetricAllTagsAttributes.new(
  tags: [&quot;sport:golf&quot;,&quot;sport:football&quot;,&quot;animal:dog&quot;]
)
```
