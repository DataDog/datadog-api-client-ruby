# DatadogAPIClient::V1::ApmStatsQueryColumnType

## Properties

| Name                  | Type                                                            | Description                           | Notes      |
| --------------------- | --------------------------------------------------------------- | ------------------------------------- | ---------- |
| **\_alias**           | **String**                                                      | A user-assigned alias for the column. | [optional] |
| **cell_display_mode** | [**TableWidgetCellDisplayMode**](TableWidgetCellDisplayMode.md) |                                       | [optional] |
| **name**              | **String**                                                      | Column name.                          |            |
| **order**             | [**WidgetSort**](WidgetSort.md)                                 |                                       | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ApmStatsQueryColumnType.new(
  _alias: Requests,
  cell_display_mode: null,
  name: Reqs,
  order: null
)
```
