# DatadogAPIClient::V2::MetricDistinctVolumeAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **distinct_volume** | **Integer** | Distinct volume for the given metric. | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::MetricDistinctVolumeAttributes.new(
  distinct_volume: 10
)
```

