# DatadogAPIClient::V1::SyntheticsTiming

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dns** | **Float** | The duration in millisecond of the DNS lookup. | [optional] |
| **download** | **Float** | The time in millisecond to download the response. | [optional] |
| **first_byte** | **Float** | The time in millisecond to first byte. | [optional] |
| **handshake** | **Float** | The duration in millisecond of the TLS handshake. | [optional] |
| **redirect** | **Float** | The time in millisecond spent during redirections. | [optional] |
| **ssl** | **Float** | The duration in millisecond of the TLS handshake. | [optional] |
| **tcp** | **Float** | Time in millisecond to establish the TCP connection. | [optional] |
| **total** | **Float** | The overall time in millisecond the request took to be processed. | [optional] |
| **wait** | **Float** | Time spent in millisecond waiting for a response. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsTiming.new(
  dns: null,
  download: null,
  first_byte: null,
  handshake: null,
  redirect: null,
  ssl: null,
  tcp: null,
  total: null,
  wait: null
)
```

