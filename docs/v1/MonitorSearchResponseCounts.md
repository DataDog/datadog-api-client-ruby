# DatadogAPIClient::V1::MonitorSearchResponseCounts

## Properties

| Name       | Type                    | Description    | Notes      |
| ---------- | ----------------------- | -------------- | ---------- |
| **muted**  | **Array&lt;Object&gt;** | Search facets. | [optional] |
| **status** | **Array&lt;Object&gt;** | Search facets. | [optional] |
| **tag**    | **Array&lt;Object&gt;** | Search facets. | [optional] |
| **type**   | **Array&lt;Object&gt;** | Search facets. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::MonitorSearchResponseCounts.new(
  muted: null,
  status: null,
  tag: null,
  type: null
)
```
