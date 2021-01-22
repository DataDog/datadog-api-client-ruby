# DatadogAPIClient::V1::SyntheticsTestRequestCertificateItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **content** | **String** | Content of the certificate or key. | [optional] |
| **filename** | **String** | File name for the certificate or key. | [optional] |
| **updated_at** | **String** | Date of update of the certificate or key, ISO format. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsTestRequestCertificateItem.new(
  content: null,
  filename: null,
  updated_at: null
)
```

