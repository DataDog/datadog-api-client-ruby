# DatadogAPIClient::V1::SlackIntegrationChannelDisplay

## Properties

| Name         | Type        | Description                                    | Notes                       |
| ------------ | ----------- | ---------------------------------------------- | --------------------------- |
| **message**  | **Boolean** | Show the main body of the alert event.         | [optional][default to true] |
| **notified** | **Boolean** | Show the list of @-handles in the alert event. | [optional][default to true] |
| **snapshot** | **Boolean** | Show the alert event&#39;s snapshot image.     | [optional][default to true] |
| **tags**     | **Boolean** | Show the scopes on which the monitor alerted.  | [optional][default to true] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SlackIntegrationChannelDisplay.new(
  message: null,
  notified: null,
  snapshot: null,
  tags: null
)
```
