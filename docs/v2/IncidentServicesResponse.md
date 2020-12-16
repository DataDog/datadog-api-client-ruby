# DatadogAPIClient::V2::IncidentServicesResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;IncidentServiceResponseData&gt;**](IncidentServiceResponseData.md) | An array of incident services. |  |
| **included** | [**Array&lt;IncidentServiceIncludedItems&gt;**](IncidentServiceIncludedItems.md) | Included related resources which the user requested. | [optional][readonly] |
| **meta** | [**IncidentServicesResponseMeta**](IncidentServicesResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::IncidentServicesResponse.new(
  data: [{&quot;id&quot;:&quot;00000000-0000-0000-0000-000000000000&quot;,&quot;type&quot;:&quot;services&quot;}],
  included: null,
  meta: null
)
```

