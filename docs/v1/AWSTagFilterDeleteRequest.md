# DatadogAPIClient::V1::AWSTagFilterDeleteRequest

## Properties

| Name           | Type                                | Description                                | Notes      |
| -------------- | ----------------------------------- | ------------------------------------------ | ---------- |
| **account_id** | **String**                          | The unique identifier of your AWS account. | [optional] |
| **namespace**  | [**AWSNamespace**](AWSNamespace.md) |                                            | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::AWSTagFilterDeleteRequest.new(
  account_id: FAKEAC0FAKEAC2FAKEAC,
  namespace: null
)
```
