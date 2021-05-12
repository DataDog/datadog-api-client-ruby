# DatadogAPIClient::V1::NotebooksResponsePage

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total_count** | **Integer** | The total number of notebooks that would be returned if the request was not filtered by &#x60;start&#x60; and &#x60;count&#x60; parameters. | [optional] |
| **total_filtered_count** | **Integer** | The total number of notebooks returned. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::NotebooksResponsePage.new(
  total_count: null,
  total_filtered_count: null
)
```

