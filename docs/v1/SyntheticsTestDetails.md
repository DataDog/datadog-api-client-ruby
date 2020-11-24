# DatadogAPIClient::V1::SyntheticsTestDetails

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config** | [**SyntheticsTestConfig**](SyntheticsTestConfig.md) |  | [optional] |
| **locations** | **Array&lt;String&gt;** | Array of locations used to run the test. | [optional] |
| **message** | **String** | Notification message associated with the test. | [optional] |
| **monitor_id** | **Integer** | The associated monitor ID. | [optional] |
| **name** | **String** | Name of the test. | [optional] |
| **options** | [**SyntheticsTestOptions**](SyntheticsTestOptions.md) |  | [optional] |
| **public_id** | **String** | The test public ID. | [optional] |
| **status** | [**SyntheticsTestPauseStatus**](SyntheticsTestPauseStatus.md) |  | [optional] |
| **steps** | [**Array&lt;SyntheticsStep&gt;**](SyntheticsStep.md) | For browser test, the steps of the test. | [optional] |
| **subtype** | [**SyntheticsTestDetailsSubType**](SyntheticsTestDetailsSubType.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** | Array of tags attached to the test. | [optional] |
| **type** | [**SyntheticsTestDetailsType**](SyntheticsTestDetailsType.md) |  | [optional] |

## Code Sample

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsTestDetails.new(
  config: null,
  locations: null,
  message: null,
  monitor_id: null,
  name: null,
  options: null,
  public_id: null,
  status: null,
  steps: null,
  subtype: null,
  tags: null,
  type: null
)
```

