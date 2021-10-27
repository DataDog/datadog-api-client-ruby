# DatadogAPIClient::V1::AWSAccountDeleteRequest

## Properties

| Name              | Type       | Description                                                                               | Notes      |
| ----------------- | ---------- | ----------------------------------------------------------------------------------------- | ---------- |
| **access_key_id** | **String** | Your AWS access key ID. Only required if your AWS account is a GovCloud or China account. | [optional] |
| **account_id**    | **String** | Your AWS Account ID without dashes.                                                       | [optional] |
| **role_name**     | **String** | Your Datadog role delegation name.                                                        | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::AWSAccountDeleteRequest.new(
  access_key_id: null,
  account_id: 1234567,
  role_name: DatadogAWSIntegrationRole
)
```
