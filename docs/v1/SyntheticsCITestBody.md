# DatadogAPIClient::V1::SyntheticsCITestBody

## Properties

| Name      | Type                                                     | Description                 | Notes      |
| --------- | -------------------------------------------------------- | --------------------------- | ---------- |
| **tests** | [**Array&lt;SyntheticsCITest&gt;**](SyntheticsCITest.md) | Individual synthetics test. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsCITestBody.new(
  tests: null
)
```
