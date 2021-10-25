# DatadogAPIClient::V1::SyntheticsAPITest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **config** | [**SyntheticsAPITestConfig**](SyntheticsAPITestConfig.md) |  | [optional] |
| **locations** | **Array&lt;String&gt;** | Array of locations used to run the test. | [optional] |
| **message** | **String** | Notification message associated with the test. | [optional] |
| **monitor_id** | **Integer** | The associated monitor ID. | [optional][readonly] |
| **name** | **String** | Name of the test. | [optional] |
| **options** | [**SyntheticsTestOptions**](SyntheticsTestOptions.md) |  | [optional] |
| **public_id** | **String** | The public ID for the test. | [optional][readonly] |
| **status** | [**SyntheticsTestPauseStatus**](SyntheticsTestPauseStatus.md) |  | [optional] |
| **subtype** | [**SyntheticsTestDetailsSubType**](SyntheticsTestDetailsSubType.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** | Array of tags attached to the test. | [optional] |
| **type** | [**SyntheticsAPITestType**](SyntheticsAPITestType.md) |  | [optional][default to &#39;api&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsAPITest.new(
  config: null,
  locations: null,
  message: null,
  monitor_id: null,
  name: null,
  options: null,
  public_id: null,
  status: null,
  subtype: null,
  tags: null,
  type: null
)
```

