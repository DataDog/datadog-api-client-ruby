# DatadogAPIClient::V1::MetricSearchResponseResults

## Properties

| Name        | Type                    | Description                                  | Notes      |
| ----------- | ----------------------- | -------------------------------------------- | ---------- |
| **metrics** | **Array&lt;String&gt;** | List of metrics that match the search query. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::MetricSearchResponseResults.new(
  metrics: null
)
```
