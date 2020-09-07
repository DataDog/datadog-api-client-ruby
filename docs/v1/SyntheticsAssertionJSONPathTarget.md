# DatadogAPIClient::V1::SyntheticsAssertionJSONPathTarget

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**operator** | [**SyntheticsAssertionJSONPathOperator**](SyntheticsAssertionJSONPathOperator.md) |  | 
**property** | **String** | The associated assertion property. | [optional] 
**target** | [**SyntheticsAssertionJSONPathTargetTarget**](SyntheticsAssertionJSONPathTargetTarget.md) |  | [optional] 
**type** | [**SyntheticsAssertionType**](SyntheticsAssertionType.md) |  | 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::SyntheticsAssertionJSONPathTarget.new(operator: null,
                                 property: null,
                                 target: null,
                                 type: null)
```


