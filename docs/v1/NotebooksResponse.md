# DatadogAPIClient::V1::NotebooksResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **data** | [**Array&lt;NotebookResponseData&gt;**](NotebookResponseData.md) | List of notebook definitions. | [optional] |
| **meta** | [**NotebooksResponseMeta**](NotebooksResponseMeta.md) |  | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::NotebooksResponse.new(
  data: null,
  meta: null
)
```

