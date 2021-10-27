# DatadogAPIClient::V2::FullApplicationKeyAttributes

## Properties

| Name           | Type       | Description                                      | Notes                |
| -------------- | ---------- | ------------------------------------------------ | -------------------- |
| **created_at** | **String** | Creation date of the application key.            | [optional][readonly] |
| **key**        | **String** | The application key.                             | [optional][readonly] |
| **last4**      | **String** | The last four characters of the application key. | [optional][readonly] |
| **name**       | **String** | Name of the application key.                     | [optional]           |

## Example

```ruby
require 'datadog_api_client/v2'

instance = DatadogAPIClient::V2::FullApplicationKeyAttributes.new(
  created_at: 2020-11-23T10:00:00.000Z,
  key: null,
  last4: abcd,
  name: Application Key for submitting metrics
)
```
