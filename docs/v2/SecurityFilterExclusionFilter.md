# DatadogAPIClient::V2::SecurityFilterExclusionFilter

## Properties

| Name      | Type       | Description                                                                               | Notes |
| --------- | ---------- | ----------------------------------------------------------------------------------------- | ----- |
| **name**  | **String** | Exclusion filter name.                                                                    |       |
| **query** | **String** | Exclusion filter query. Logs that match this query are excluded from the security filter. |       |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityFilterExclusionFilter.new(
  name: Exclude staging,
  query: source:staging
)
```
