# DatadogAPIClient::V1::HostMuteResponse

## Properties

| Name         | Type        | Description                                          | Notes      |
| ------------ | ----------- | ---------------------------------------------------- | ---------- |
| **action**   | **String**  | Action applied to the hosts.                         | [optional] |
| **\_end**    | **Integer** | POSIX timestamp in seconds when the host is unmuted. | [optional] |
| **hostname** | **String**  | The host name.                                       | [optional] |
| **message**  | **String**  | Message associated with the mute.                    | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::HostMuteResponse.new(
  action: Muted,
  _end: 1579098130,
  hostname: test.host,
  message: Muting this host for a test!
)
```
