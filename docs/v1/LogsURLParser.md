# DatadogAPIClient::V1::LogsURLParser

## Properties

| Name                         | Type                                          | Description                                                                                        | Notes                                   |
| ---------------------------- | --------------------------------------------- | -------------------------------------------------------------------------------------------------- | --------------------------------------- |
| **is_enabled**               | **Boolean**                                   | Whether or not the processor is enabled.                                                           | [optional][default to false]            |
| **name**                     | **String**                                    | Name of the processor.                                                                             | [optional]                              |
| **normalize_ending_slashes** | **Boolean**                                   | Normalize the ending slashes or not.                                                               | [optional][default to false]            |
| **sources**                  | **Array&lt;String&gt;**                       | Array of source attributes.                                                                        |                                         |
| **target**                   | **String**                                    | Name of the parent attribute that contains all the extracted details from the &#x60;sources&#x60;. | [default to &#39;http.url_details&#39;] |
| **type**                     | [**LogsURLParserType**](LogsURLParserType.md) |                                                                                                    | [default to &#39;url-parser&#39;]       |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsURLParser.new(
  is_enabled: null,
  name: null,
  normalize_ending_slashes: null,
  sources: [&quot;http.url&quot;],
  target: http.url_details,
  type: null
)
```
