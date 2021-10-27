# DatadogAPIClient::V1::MonitorGroupSearchResponse

## Properties

| Name         | Type                                                                        | Description                       | Notes                |
| ------------ | --------------------------------------------------------------------------- | --------------------------------- | -------------------- |
| **counts**   | [**MonitorGroupSearchResponseCounts**](MonitorGroupSearchResponseCounts.md) |                                   | [optional]           |
| **groups**   | [**Array&lt;MonitorGroupSearchResult&gt;**](MonitorGroupSearchResult.md)    | The list of found monitor groups. | [optional][readonly] |
| **metadata** | [**MonitorSearchResponseMetadata**](MonitorSearchResponseMetadata.md)       |                                   | [optional]           |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::MonitorGroupSearchResponse.new(
  counts: null,
  groups: null,
  metadata: null
)
```
