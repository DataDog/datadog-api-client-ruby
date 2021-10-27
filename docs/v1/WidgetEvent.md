# DatadogAPIClient::V1::WidgetEvent

## Properties

| Name               | Type       | Description                                   | Notes      |
| ------------------ | ---------- | --------------------------------------------- | ---------- |
| **q**              | **String** | Query definition.                             |            |
| **tags_execution** | **String** | The execution method for multi-value filters. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::WidgetEvent.new(
  q: ,
  tags_execution: null
)
```
