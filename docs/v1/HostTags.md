# DatadogAPIClient::V1::HostTags

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **host** | **String** | Your host name. | [optional] |
| **tags** | **Array&lt;String&gt;** | A list of tags to apply to the host. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::HostTags.new(
  host: test.host,
  tags: null
)
```

