# DatadogAPIClient::V1::HostMuteSettings

## Properties

| Name         | Type        | Description                                                                                                       | Notes      |
| ------------ | ----------- | ----------------------------------------------------------------------------------------------------------------- | ---------- |
| **\_end**    | **Integer** | POSIX timestamp in seconds when the host is unmuted. If omitted, the host remains muted until explicitly unmuted. | [optional] |
| **message**  | **String**  | Message to associate with the muting of this host.                                                                | [optional] |
| **override** | **Boolean** | If true and the host is already muted, replaces existing host mute settings.                                      | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::HostMuteSettings.new(
  _end: 1579098130,
  message: Muting this host for a test!,
  override: false
)
```
