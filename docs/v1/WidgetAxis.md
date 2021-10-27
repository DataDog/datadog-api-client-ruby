# DatadogAPIClient::V1::WidgetAxis

## Properties

| Name             | Type        | Description                                                                                                                                                              | Notes                                   |
| ---------------- | ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------------- |
| **include_zero** | **Boolean** | True includes zero.                                                                                                                                                      | [optional]                              |
| **label**        | **String**  | The label of the axis to display on the graph.                                                                                                                           | [optional]                              |
| **max**          | **String**  | Specifies the maximum value to show on the y-axis. It takes a number, or auto for default behavior.                                                                      | [optional][default to &#39;auto&#39;]   |
| **min**          | **String**  | Specifies minimum value to show on the y-axis. It takes a number, or auto for default behavior.                                                                          | [optional][default to &#39;auto&#39;]   |
| **scale**        | **String**  | Specifies the scale type. Possible values are &#x60;linear&#x60;, &#x60;log&#x60;, &#x60;sqrt&#x60;, &#x60;pow##&#x60; (e.g. &#x60;pow2&#x60;, &#x60;pow0.5&#x60; etc.). | [optional][default to &#39;linear&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::WidgetAxis.new(
  include_zero: null,
  label: null,
  max: null,
  min: null,
  scale: null
)
```
