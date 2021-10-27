# DatadogAPIClient::V1::SyntheticsCoreWebVitals

## Properties

| Name    | Type        | Description                               | Notes      |
| ------- | ----------- | ----------------------------------------- | ---------- |
| **cls** | **Integer** | Cumulative Layout Shift.                  | [optional] |
| **lcp** | **Integer** | Largest Contentful Paint in milliseconds. | [optional] |
| **url** | **String**  | URL attached to the metrics.              | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsCoreWebVitals.new(
  cls: null,
  lcp: null,
  url: null
)
```
