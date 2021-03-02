# DatadogAPIClient::V1::SyntheticsBrowserTest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config** | [**SyntheticsBrowserTestConfig**](SyntheticsBrowserTestConfig.md) |  | [optional] |
| **locations** | **Array&lt;String&gt;** | Array of locations used to run the test. | [optional] |
| **message** | **String** | Notification message associated with the test. | [optional] |
| **monitor_id** | **Integer** | The associated monitor ID. | [optional] |
| **name** | **String** | Name of the test. | [optional] |
| **options** | [**SyntheticsTestOptions**](SyntheticsTestOptions.md) |  | [optional] |
| **public_id** | **String** | The public ID of the test. | [optional] |
| **status** | [**SyntheticsTestPauseStatus**](SyntheticsTestPauseStatus.md) |  | [optional] |
| **steps** | [**Array&lt;SyntheticsStep&gt;**](SyntheticsStep.md) | The steps of the test. | [optional] |
| **tags** | **Array&lt;String&gt;** | Array of tags attached to the test. | [optional] |
| **type** | [**SyntheticsBrowserTestType**](SyntheticsBrowserTestType.md) |  | [optional][default to &#39;browser&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsBrowserTest.new(
  config: null,
  locations: null,
  message: null,
  monitor_id: null,
  name: null,
  options: null,
  public_id: null,
  status: null,
  steps: null,
  tags: null,
  type: null
)
```

