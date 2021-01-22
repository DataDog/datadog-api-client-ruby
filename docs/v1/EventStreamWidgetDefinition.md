# DatadogAPIClient::V1::EventStreamWidgetDefinition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_size** | [**WidgetEventSize**](WidgetEventSize.md) |  | [optional] |
| **query** | **String** | Query to filter the event stream with. |  |
| **tags_execution** | **String** | The execution method for multi-value filters. Can be either and or or. | [optional] |
| **time** | [**WidgetTime**](WidgetTime.md) |  | [optional] |
| **title** | **String** | Title of the widget. | [optional] |
| **title_align** | [**WidgetTextAlign**](WidgetTextAlign.md) |  | [optional] |
| **title_size** | **String** | Size of the title. | [optional] |
| **type** | [**EventStreamWidgetDefinitionType**](EventStreamWidgetDefinitionType.md) |  | [default to &#39;event_stream&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::EventStreamWidgetDefinition.new(
  event_size: null,
  query: ,
  tags_execution: null,
  time: null,
  title: null,
  title_align: null,
  title_size: null,
  type: null
)
```

