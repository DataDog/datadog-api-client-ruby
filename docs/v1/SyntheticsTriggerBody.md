# DatadogAPIClient::V1::SyntheticsTriggerBody

## Properties

| Name      | Type                                                               | Description                 | Notes |
| --------- | ------------------------------------------------------------------ | --------------------------- | ----- |
| **tests** | [**Array&lt;SyntheticsTriggerTest&gt;**](SyntheticsTriggerTest.md) | Individual synthetics test. |       |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsTriggerBody.new(
  tests: null
)
```
