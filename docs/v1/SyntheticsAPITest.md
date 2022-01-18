# DatadogAPIClient::V1::SyntheticsAPITest

## Properties

| Name           | Type                                                                | Description                                    | Notes                      |
| -------------- | ------------------------------------------------------------------- | ---------------------------------------------- | -------------------------- |
| **config**     | [**SyntheticsAPITestConfig**](SyntheticsAPITestConfig.md)           |                                                |                            |
| **locations**  | **Array&lt;String&gt;**                                             | Array of locations used to run the test.       |                            |
| **message**    | **String**                                                          | Notification message associated with the test. | [optional]                 |
| **monitor_id** | **Integer**                                                         | The associated monitor ID.                     | [optional][readonly]       |
| **name**       | **String**                                                          | Name of the test.                              |                            |
| **options**    | [**SyntheticsTestOptions**](SyntheticsTestOptions.md)               |                                                |                            |
| **public_id**  | **String**                                                          | The public ID for the test.                    | [optional][readonly]       |
| **status**     | [**SyntheticsTestPauseStatus**](SyntheticsTestPauseStatus.md)       |                                                | [optional]                 |
| **subtype**    | [**SyntheticsTestDetailsSubType**](SyntheticsTestDetailsSubType.md) |                                                | [optional]                 |
| **tags**       | **Array&lt;String&gt;**                                             | Array of tags attached to the test.            | [optional]                 |
| **type**       | [**SyntheticsAPITestType**](SyntheticsAPITestType.md)               |                                                | [default to &#39;api&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsAPITest.new(
  config: null,
  locations: [&quot;aws:eu-west-3&quot;],
  message: Notification message,
  monitor_id: 12345678,
  name: Example test name,
  options: null,
  public_id: 123-abc-456,
  status: null,
  subtype: null,
  tags: [&quot;env:production&quot;],
  type: null
)
```
