# DatadogAPIClient::V1::AzureAccount

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | Your Azure web application ID. | [optional] |
| **client_secret** | **String** | Your Azure web application secret key. | [optional] |
| **errors** | **Array&lt;String&gt;** | Errors in your configuration. | [optional] |
| **host_filters** | **String** | Limit the Azure instances that are pulled into Datadog by using tags. Only hosts that match one of the defined tags are imported into Datadog. | [optional] |
| **new_client_id** | **String** | Your New Azure web application ID. | [optional] |
| **new_tenant_name** | **String** | Your New Azure Active Directory ID. | [optional] |
| **tenant_name** | **String** | Your Azure Active Directory ID. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::AzureAccount.new(
  client_id: testc7f6-1234-5678-9101-3fcbf464test,
  client_secret: testingx./Sw*g/Y33t..R1cH+hScMDt,
  errors: [&quot;*&quot;],
  host_filters: key:value,filter:example,
  new_client_id: new1c7f6-1234-5678-9101-3fcbf464test,
  new_tenant_name: new1c44-1234-5678-9101-cc00736ftest,
  tenant_name: testc44-1234-5678-9101-cc00736ftest
)
```

