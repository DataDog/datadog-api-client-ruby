# DatadogAPIClient::V1::SyntheticsAPIStep

## Properties

| Name                 | Type                                                                     | Description                                                                                                                                           | Notes      |
| -------------------- | ------------------------------------------------------------------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ---------- |
| **allow_failure**    | **Boolean**                                                              | Determines whether or not to continue with test if this step fails.                                                                                   | [optional] |
| **assertions**       | [**Array&lt;SyntheticsAssertion&gt;**](SyntheticsAssertion.md)           | Array of assertions used for the test.                                                                                                                |            |
| **extracted_values** | [**Array&lt;SyntheticsParsingOptions&gt;**](SyntheticsParsingOptions.md) | Array of values to parse and save as variables from the response.                                                                                     | [optional] |
| **is_critical**      | **Boolean**                                                              | Determines whether or not to consider the entire test as failed if this step fails. Can be used only if &#x60;allowFailure&#x60; is &#x60;true&#x60;. | [optional] |
| **name**             | **String**                                                               | The name of the step.                                                                                                                                 |            |
| **request**          | [**SyntheticsTestRequest**](SyntheticsTestRequest.md)                    |                                                                                                                                                       |            |
| **\_retry**          | [**SyntheticsTestOptionsRetry**](SyntheticsTestOptionsRetry.md)          |                                                                                                                                                       | [optional] |
| **subtype**          | [**SyntheticsAPIStepSubtype**](SyntheticsAPIStepSubtype.md)              |                                                                                                                                                       |            |

## Example

```ruby
require 'datadog_api_client/v1'

instance = DatadogAPIClient::V1::SyntheticsAPIStep.new(
  allow_failure: null,
  assertions: [{&quot;operator&quot;:&quot;lessThan&quot;,&quot;target&quot;:1000,&quot;type&quot;:&quot;responseTime&quot;}],
  extracted_values: null,
  is_critical: null,
  name: Example step name,
  request: null,
  _retry: null,
  subtype: null
)
```
