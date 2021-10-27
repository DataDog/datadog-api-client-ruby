# DatadogAPIClient::V2::SecurityFilterExclusionFilterResponse

## Properties

| Name      | Type       | Description                 | Notes      |
| --------- | ---------- | --------------------------- | ---------- |
| **name**  | **String** | The exclusion filter name.  | [optional] |
| **query** | **String** | The exclusion filter query. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityFilterExclusionFilterResponse.new(
  name: Exclude staging,
  query: source:staging
)
```
