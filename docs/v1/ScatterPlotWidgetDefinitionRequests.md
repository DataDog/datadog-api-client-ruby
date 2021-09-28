# DatadogAPIClient::V1::ScatterPlotWidgetDefinitionRequests

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **table** | [**ScatterplotTableRequest**](ScatterplotTableRequest.md) |  | [optional] |
| **x** | [**ScatterPlotRequest**](ScatterPlotRequest.md) |  | [optional] |
| **y** | [**ScatterPlotRequest**](ScatterPlotRequest.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ScatterPlotWidgetDefinitionRequests.new(
  table: null,
  x: null,
  y: null
)
```

