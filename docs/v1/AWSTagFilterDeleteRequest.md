# DatadogAPIClient::V1::AWSTagFilterDeleteRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **aws_account_identifier** | **String** | The unique identifier of your AWS account. | [optional] |
| **namespace** | [**AWSNamespace**](AWSNamespace.md) |  | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::AWSTagFilterDeleteRequest.new(
  aws_account_identifier: FAKEAC0FAKEAC2FAKEAC,
  namespace: null
)
```

