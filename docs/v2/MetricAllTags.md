# DatadogAPIClient::V2::MetricAllTags

## Properties

| Name           | Type                                                      | Description                        | Notes                                    |
| -------------- | --------------------------------------------------------- | ---------------------------------- | ---------------------------------------- |
| **attributes** | [**MetricAllTagsAttributes**](MetricAllTagsAttributes.md) |                                    | [optional]                               |
| **id**         | **String**                                                | The metric name for this resource. | [optional]                               |
| **type**       | [**MetricType**](MetricType.md)                           |                                    | [optional][default to &#39;metrics&#39;] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::MetricAllTags.new(
  attributes: null,
  id: test.metric.latency,
  type: null
)
```
