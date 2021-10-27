# DatadogAPIClient::V1::DistributionWidgetXAxis

## Properties

| Name             | Type        | Description                                                                                                                                          | Notes                                   |
| ---------------- | ----------- | ---------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------- |
| **include_zero** | **Boolean** | True includes zero.                                                                                                                                  | [optional]                              |
| **max**          | **String**  | Specifies maximum value to show on the x-axis. It takes a number, percentile (p90 &#x3D;&#x3D;&#x3D; 90th percentile), or auto for default behavior. | [optional][default to &#39;auto&#39;]   |
| **min**          | **String**  | Specifies minimum value to show on the x-axis. It takes a number, percentile (p90 &#x3D;&#x3D;&#x3D; 90th percentile), or auto for default behavior. | [optional][default to &#39;auto&#39;]   |
| **scale**        | **String**  | Specifies the scale type. Possible values are &#x60;linear&#x60;.                                                                                    | [optional][default to &#39;linear&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::DistributionWidgetXAxis.new(
  include_zero: null,
  max: null,
  min: null,
  scale: null
)
```
