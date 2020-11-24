# DatadogAPIClient::V1::SyntheticsGetAPITestLatestResultsResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_timestamp_fetched** | **Integer** | Timestamp of the latest API test run. | [optional] |
| **results** | [**Array&lt;SyntheticsAPITestResultShort&gt;**](SyntheticsAPITestResultShort.md) | Result of the latest API test run. | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsGetAPITestLatestResultsResponse.new(
  last_timestamp_fetched: null,
  results: null
)
```

