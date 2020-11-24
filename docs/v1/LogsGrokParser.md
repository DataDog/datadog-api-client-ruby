# DatadogAPIClient::V1::LogsGrokParser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **grok** | [**LogsGrokParserRules**](LogsGrokParserRules.md) |  |  |
| **is_enabled** | **Boolean** | Whether or not the processor is enabled. | [optional][default to false] |
| **name** | **String** | Name of the processor. | [optional] |
| **samples** | **Array&lt;String&gt;** | List of sample logs to test this grok parser. | [optional] |
| **source** | **String** | Name of the log attribute to parse. | [default to &#39;message&#39;] |
| **type** | [**LogsGrokParserType**](LogsGrokParserType.md) |  | [default to &#39;grok-parser&#39;] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsGrokParser.new(
  grok: null,
  is_enabled: null,
  name: null,
  samples: null,
  source: message,
  type: null
)
```

