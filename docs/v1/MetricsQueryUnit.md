# DatadogAPIClient::V1::MetricsQueryUnit

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **family** | **String** | Unit family, allows for conversion between units of the same family, for scaling. | [optional][readonly] |
| **name** | **String** | Unit name | [optional][readonly] |
| **plural** | **String** | Plural form of the unit name. | [optional][readonly] |
| **scale_factor** | **Float** | Factor for scaling between units of the same family. | [optional][readonly] |
| **short_name** | **String** | Abbreviation of the unit. | [optional][readonly] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::MetricsQueryUnit.new(
  family: time,
  name: minute,
  plural: minutes,
  scale_factor: 60.0,
  short_name: min
)
```

