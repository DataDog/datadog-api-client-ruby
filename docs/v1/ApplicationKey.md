# DatadogAPIClient::V1::ApplicationKey

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hash** | **String** | Hash of an application key. | [optional][readonly] |
| **name** | **String** | Name of an application key. | [optional] |
| **owner** | **String** | Owner of an application key. | [optional][readonly] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::ApplicationKey.new(
  hash: 1234512345123459cda4eb9ced49a3d84fd0138c,
  name: example user,
  owner: example.com
)
```

