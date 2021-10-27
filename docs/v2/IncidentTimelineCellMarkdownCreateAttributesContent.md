# DatadogAPIClient::V2::IncidentTimelineCellMarkdownCreateAttributesContent

## Properties

| Name        | Type       | Description                       | Notes      |
| ----------- | ---------- | --------------------------------- | ---------- |
| **content** | **String** | The Markdown content of the cell. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::IncidentTimelineCellMarkdownCreateAttributesContent.new(
  content: An example timeline cell message.
)
```
