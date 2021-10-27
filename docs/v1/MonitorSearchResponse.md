# DatadogAPIClient::V1::MonitorSearchResponse

## Properties

| Name         | Type                                                                  | Description                 | Notes                |
| ------------ | --------------------------------------------------------------------- | --------------------------- | -------------------- |
| **counts**   | [**MonitorSearchResponseCounts**](MonitorSearchResponseCounts.md)     |                             | [optional]           |
| **metadata** | [**MonitorSearchResponseMetadata**](MonitorSearchResponseMetadata.md) |                             | [optional]           |
| **monitors** | [**Array&lt;MonitorSearchResult&gt;**](MonitorSearchResult.md)        | The list of found monitors. | [optional][readonly] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::MonitorSearchResponse.new(
  counts: null,
  metadata: null,
  monitors: null
)
```
