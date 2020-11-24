# DatadogAPIClient::V1::SyntheticsGetBrowserTestLatestResultsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_timestamp_fetched** | **Integer** | Timestamp of the latest browser test run. | [optional] |
| **results** | [**Array&lt;SyntheticsBrowserTestResultShort&gt;**](SyntheticsBrowserTestResultShort.md) | Result of the latest browser test run. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsGetBrowserTestLatestResultsResponse.new(
  last_timestamp_fetched: null,
  results: null
)
```

