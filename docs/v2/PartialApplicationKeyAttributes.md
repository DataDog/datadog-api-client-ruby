# DatadogAPIClient::V2::PartialApplicationKeyAttributes

## Properties

| Name           | Type       | Description                                      | Notes                |
| -------------- | ---------- | ------------------------------------------------ | -------------------- |
| **created_at** | **String** | Creation date of the application key.            | [optional][readonly] |
| **last4**      | **String** | The last four characters of the application key. | [optional][readonly] |
| **name**       | **String** | Name of the application key.                     | [optional]           |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::PartialApplicationKeyAttributes.new(
  created_at: 2020-11-23T10:00:00.000Z,
  last4: abcd,
  name: Application Key for submitting metrics
)
```
