# DatadogAPIClient::V2::LogsArchiveIntegrationS3

## Properties

| Name           | Type       | Description                         | Notes |
| -------------- | ---------- | ----------------------------------- | ----- |
| **account_id** | **String** | The account ID for the integration. |       |
| **role_name**  | **String** | The path of the integration.        |       |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::LogsArchiveIntegrationS3.new(
  account_id: 123456789012,
  role_name: role-name
)
```
