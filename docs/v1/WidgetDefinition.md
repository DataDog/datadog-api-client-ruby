# DatadogAPIClient::V1::WidgetDefinition

## Class instance methods

### `openapi_one_of`

Returns the list of classes defined in oneOf.

#### Example

```ruby
require 'datadog_api_client/v1'

DatadogAPIClient::V1::WidgetDefinition.openapi_one_of
# =>
# [
#   :'AlertGraphWidgetDefinition',
#   :'AlertValueWidgetDefinition',
#   :'ChangeWidgetDefinition',
#   :'CheckStatusWidgetDefinition',
#   :'DistributionWidgetDefinition',
#   :'EventStreamWidgetDefinition',
#   :'EventTimelineWidgetDefinition',
#   :'FreeTextWidgetDefinition',
#   :'GeomapWidgetDefinition',
#   :'GroupWidgetDefinition',
#   :'HeatMapWidgetDefinition',
#   :'HostMapWidgetDefinition',
#   :'IFrameWidgetDefinition',
#   :'ImageWidgetDefinition',
#   :'LogStreamWidgetDefinition',
#   :'MonitorSummaryWidgetDefinition',
#   :'NoteWidgetDefinition',
#   :'QueryValueWidgetDefinition',
#   :'SLOWidgetDefinition',
#   :'ScatterPlotWidgetDefinition',
#   :'ServiceMapWidgetDefinition',
#   :'ServiceSummaryWidgetDefinition',
#   :'TableWidgetDefinition',
#   :'TimeseriesWidgetDefinition',
#   :'ToplistWidgetDefinition'
# ]
```

### build

Find the appropriate object from the `openapi_one_of` list and casts the data into it.

#### Example

```ruby
require 'datadog_api_client/v1'

DatadogAPIClient::V1::WidgetDefinition.build(data)
# => #<AlertGraphWidgetDefinition:0x00007fdd4aab02a0>

DatadogAPIClient::V1::WidgetDefinition.build(data_that_doesnt_match)
# => nil
```

#### Parameters

| Name | Type | Description |
| ---- | ---- | ----------- |
| **data** | **Mixed** | data to be matched against the list of oneOf items |

#### Return type

- `AlertGraphWidgetDefinition`
- `AlertValueWidgetDefinition`
- `ChangeWidgetDefinition`
- `CheckStatusWidgetDefinition`
- `DistributionWidgetDefinition`
- `EventStreamWidgetDefinition`
- `EventTimelineWidgetDefinition`
- `FreeTextWidgetDefinition`
- `GeomapWidgetDefinition`
- `GroupWidgetDefinition`
- `HeatMapWidgetDefinition`
- `HostMapWidgetDefinition`
- `IFrameWidgetDefinition`
- `ImageWidgetDefinition`
- `LogStreamWidgetDefinition`
- `MonitorSummaryWidgetDefinition`
- `NoteWidgetDefinition`
- `QueryValueWidgetDefinition`
- `SLOWidgetDefinition`
- `ScatterPlotWidgetDefinition`
- `ServiceMapWidgetDefinition`
- `ServiceSummaryWidgetDefinition`
- `TableWidgetDefinition`
- `TimeseriesWidgetDefinition`
- `ToplistWidgetDefinition`
- `nil` (if no type matches)

