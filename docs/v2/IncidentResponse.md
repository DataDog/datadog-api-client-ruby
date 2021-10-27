# DatadogAPIClient::V2::IncidentResponse

## Properties

| Name         | Type                                                                             | Description                                         | Notes                |
| ------------ | -------------------------------------------------------------------------------- | --------------------------------------------------- | -------------------- |
| **data**     | [**IncidentResponseData**](IncidentResponseData.md)                              |                                                     |                      |
| **included** | [**Array&lt;IncidentResponseIncludedItem&gt;**](IncidentResponseIncludedItem.md) | Included related resources that the user requested. | [optional][readonly] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::IncidentResponse.new(
  data: null,
  included: null
)
```
