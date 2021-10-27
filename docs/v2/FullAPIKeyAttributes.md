# DatadogAPIClient::V2::FullAPIKeyAttributes

## Properties

| Name            | Type       | Description                              | Notes                |
| --------------- | ---------- | ---------------------------------------- | -------------------- |
| **created_at**  | **String** | Creation date of the API key.            | [optional][readonly] |
| **key**         | **String** | The API key.                             | [optional][readonly] |
| **last4**       | **String** | The last four characters of the API key. | [optional][readonly] |
| **modified_at** | **String** | Date the API key was last modified.      | [optional][readonly] |
| **name**        | **String** | Name of the API key.                     | [optional]           |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::FullAPIKeyAttributes.new(
  created_at: 2020-11-23T10:00:00.000Z,
  key: null,
  last4: abcd,
  modified_at: 2020-11-23T10:00:00.000Z,
  name: API Key for submitting metrics
)
```
