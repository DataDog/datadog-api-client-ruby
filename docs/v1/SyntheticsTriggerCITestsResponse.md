# DatadogAPIClient::V1::SyntheticsTriggerCITestsResponse

## Properties

| Name                    | Type                                                                                     | Description                                      | Notes      |
| ----------------------- | ---------------------------------------------------------------------------------------- | ------------------------------------------------ | ---------- |
| **batch_id**            | **String**                                                                               | The public ID of the batch triggered.            | [optional] |
| **locations**           | [**Array&lt;SyntheticsTriggerCITestLocation&gt;**](SyntheticsTriggerCITestLocation.md)   | List of Synthetics locations.                    | [optional] |
| **results**             | [**Array&lt;SyntheticsTriggerCITestRunResult&gt;**](SyntheticsTriggerCITestRunResult.md) | Information about the tests runs.                | [optional] |
| **triggered_check_ids** | **Array&lt;String&gt;**                                                                  | The public IDs of the Synthetics test triggered. | [optional] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsTriggerCITestsResponse.new(
  batch_id: null,
  locations: null,
  results: null,
  triggered_check_ids: null
)
```
