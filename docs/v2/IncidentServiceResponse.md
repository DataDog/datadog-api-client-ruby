# DatadogAPIClient::V2::IncidentServiceResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**IncidentServiceResponseData**](IncidentServiceResponseData.md) |  |  |
| **included** | [**Array&lt;IncidentServiceIncludedItems&gt;**](IncidentServiceIncludedItems.md) | Included objects from relationships. | [optional][readonly] |

## Code Sample

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::IncidentServiceResponse.new(
  data: null,
  included: null
)
```

