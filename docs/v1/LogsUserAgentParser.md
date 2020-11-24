# DatadogAPIClient::V1::LogsUserAgentParser

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **is_enabled** | **Boolean** | Whether or not the processor is enabled. | [optional][default to false] |
| **is_encoded** | **Boolean** | Define if the source attribute is URL encoded or not. | [optional][default to false] |
| **name** | **String** | Name of the processor. | [optional] |
| **sources** | **Array&lt;String&gt;** | Array of source attributes. |  |
| **target** | **String** | Name of the parent attribute that contains all the extracted details from the &#x60;sources&#x60;. | [default to &#39;http.useragent_details&#39;] |
| **type** | [**LogsUserAgentParserType**](LogsUserAgentParserType.md) |  | [default to &#39;user-agent-parser&#39;] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsUserAgentParser.new(
  is_enabled: null,
  is_encoded: null,
  name: null,
  sources: [&quot;http.useragent&quot;],
  target: http.useragent_details,
  type: null
)
```

