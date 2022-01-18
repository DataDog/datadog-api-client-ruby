# DatadogAPIClient::V1::SyntheticsBrowserTest

## Properties

| Name           | Type                                                              | Description                                                                                   | Notes                          |
| -------------- | ----------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | ------------------------------ |
| **config**     | [**SyntheticsBrowserTestConfig**](SyntheticsBrowserTestConfig.md) |                                                                                               |                                |
| **locations**  | **Array&lt;String&gt;**                                           | Array of locations used to run the test.                                                      |                                |
| **message**    | **String**                                                        | Notification message associated with the test. Message can either be text or an empty string. | [optional]                     |
| **monitor_id** | **Integer**                                                       | The associated monitor ID.                                                                    | [optional][readonly]           |
| **name**       | **String**                                                        | Name of the test.                                                                             |                                |
| **options**    | [**SyntheticsTestOptions**](SyntheticsTestOptions.md)             |                                                                                               |                                |
| **public_id**  | **String**                                                        | The public ID of the test.                                                                    | [optional][readonly]           |
| **status**     | [**SyntheticsTestPauseStatus**](SyntheticsTestPauseStatus.md)     |                                                                                               | [optional]                     |
| **steps**      | [**Array&lt;SyntheticsStep&gt;**](SyntheticsStep.md)              | The steps of the test.                                                                        | [optional]                     |
| **tags**       | **Array&lt;String&gt;**                                           | Array of tags attached to the test.                                                           | [optional]                     |
| **type**       | [**SyntheticsBrowserTestType**](SyntheticsBrowserTestType.md)     |                                                                                               | [default to &#39;browser&#39;] |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsBrowserTest.new(
  config: null,
  locations: [&quot;example-location&quot;],
  message: ,
  monitor_id: null,
  name: Example test name,
  options: null,
  public_id: null,
  status: null,
  steps: null,
  tags: null,
  type: null
)
```
