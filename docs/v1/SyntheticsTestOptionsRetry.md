# DatadogAPIClient::V1::SyntheticsTestOptionsRetry

## Properties

| Name         | Type        | Description                                                                                    | Notes      |
| ------------ | ----------- | ---------------------------------------------------------------------------------------------- | ---------- |
| **count**    | **Integer** | Number of times a test needs to be retried before marking a location as failed. Defaults to 0. | [optional] |
| **interval** | **Float**   | Time interval between retries (in milliseconds). Defaults to 300ms.                            | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsTestOptionsRetry.new(
  count: null,
  interval: null
)
```
