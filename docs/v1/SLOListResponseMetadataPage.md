# DatadogAPIClient::V1::SLOListResponseMetadataPage

## Properties

| Name                     | Type        | Description                                                                                                                                                        | Notes      |
| ------------------------ | ----------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------- |
| **total_count**          | **Integer** | The total number of resources that could be retrieved ignoring the parameters and filters in the request.                                                          | [optional] |
| **total_filtered_count** | **Integer** | The total number of resources that match the parameters and filters in the request. This attribute can be used by a client to determine the total number of pages. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SLOListResponseMetadataPage.new(
  total_count: null,
  total_filtered_count: null
)
```
