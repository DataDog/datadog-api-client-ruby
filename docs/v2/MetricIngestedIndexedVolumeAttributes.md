# DatadogAPIClient::V2::MetricIngestedIndexedVolumeAttributes

## Properties

| Name                | Type        | Description                           | Notes      |
| ------------------- | ----------- | ------------------------------------- | ---------- |
| **indexed_volume**  | **Integer** | Indexed volume for the given metric.  | [optional] |
| **ingested_volume** | **Integer** | Ingested volume for the given metric. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::MetricIngestedIndexedVolumeAttributes.new(
  indexed_volume: 10,
  ingested_volume: 20
)
```
