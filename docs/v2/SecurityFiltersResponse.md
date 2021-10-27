# DatadogAPIClient::V2::SecurityFiltersResponse

## Properties

| Name     | Type                                                 | Description                         | Notes      |
| -------- | ---------------------------------------------------- | ----------------------------------- | ---------- |
| **data** | [**Array&lt;SecurityFilter&gt;**](SecurityFilter.md) | A list of security filters objects. | [optional] |
| **meta** | [**SecurityFilterMeta**](SecurityFilterMeta.md)      |                                     | [optional] |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::SecurityFiltersResponse.new(
  data: null,
  meta: null
)
```
