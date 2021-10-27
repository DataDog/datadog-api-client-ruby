# DatadogAPIClient::V2::IncidentServiceResponseAttributes

## Properties

| Name         | Type       | Description                                          | Notes                |
| ------------ | ---------- | ---------------------------------------------------- | -------------------- |
| **created**  | **Time**   | Timestamp of when the incident service was created.  | [optional][readonly] |
| **modified** | **Time**   | Timestamp of when the incident service was modified. | [optional][readonly] |
| **name**     | **String** | Name of the incident service.                        | [optional]           |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::IncidentServiceResponseAttributes.new(
  created: null,
  modified: null,
  name: service name
)
```
