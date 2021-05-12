# DatadogAPIClient::V1::NotebookAbsoluteTime

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_end** | **Time** | The end time. |  |
| **live** | **Boolean** | Indicates whether the timeframe should be shifted to end at the current time. | [optional] |
| **start** | **Time** | The start time. |  |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::NotebookAbsoluteTime.new(
  _end: 2021-02-24T20:18:28Z,
  live: null,
  start: 2021-02-24T19:18:28Z
)
```

