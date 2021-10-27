# DatadogAPIClient::V1::LogsGrokParserRules

## Properties

| Name              | Type       | Description                                                         | Notes                             |
| ----------------- | ---------- | ------------------------------------------------------------------- | --------------------------------- |
| **match_rules**   | **String** | List of match rules for the grok parser, separated by a new line.   |                                   |
| **support_rules** | **String** | List of support rules for the grok parser, separated by a new line. | [optional][default to &#39;&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::LogsGrokParserRules.new(
  match_rules: rule_name_1 foo
rule_name_2 bar
,
  support_rules: rule_name_1 foo
rule_name_2 bar

)
```
