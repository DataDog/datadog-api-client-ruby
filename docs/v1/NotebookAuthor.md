# DatadogAPIClient::V1::NotebookAuthor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **created_at** | **Time** | Creation time of the user. | [optional] |
| **disabled** | **Boolean** | Whether the user is disabled. | [optional] |
| **email** | **String** | Email of the user. | [optional] |
| **handle** | **String** | Handle of the user. | [optional] |
| **icon** | **String** | URL of the user&#39;s icon. | [optional] |
| **name** | **String** | Name of the user. | [optional] |
| **status** | **String** | Status of the user. | [optional] |
| **title** | **String** | Title of the user. | [optional] |
| **verified** | **Boolean** | Whether the user is verified. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::NotebookAuthor.new(
  created_at: null,
  disabled: null,
  email: null,
  handle: null,
  icon: null,
  name: null,
  status: null,
  title: null,
  verified: null
)
```

