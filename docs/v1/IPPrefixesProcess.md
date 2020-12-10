# DatadogAPIClient::V1::IPPrefixesProcess

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **prefixes_ipv4** | **Array&lt;String&gt;** | List of IPv4 prefixes. | [optional] |
| **prefixes_ipv6** | **Array&lt;String&gt;** | List of IPv6 prefixes. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::IPPrefixesProcess.new(
  prefixes_ipv4: null,
  prefixes_ipv6: null
)
```

