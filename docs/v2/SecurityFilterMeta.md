# DatadogAPIClient::V2::SecurityFilterMeta

## Properties

| Name        | Type       | Description        | Notes      |
| ----------- | ---------- | ------------------ | ---------- |
| **warning** | **String** | A warning message. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityFilterMeta.new(
  warning: All the security filters are disabled. As a result, no logs are being analyzed.
)
```
