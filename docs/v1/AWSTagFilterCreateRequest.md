# DatadogAPIClient::V1::AWSTagFilterCreateRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | Your AWS Account ID without dashes. | [optional] |
| **namespace** | [**AWSNamespace**](AWSNamespace.md) |  | [optional] |
| **tag_filter_str** | **String** | The tag filter string. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::AWSTagFilterCreateRequest.new(
  account_id: 1234567,
  namespace: null,
  tag_filter_str: prod*
)
```

