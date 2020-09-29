# DatadogAPIClient::V1::SyntheticsGlobalVariableValue

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**secure** | **Boolean** | Determines if the variable is secure. | [optional] 
**value** | **String** | Value of the global variable. When reading a global variable, the value will not be present if the variable is secure. | 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::SyntheticsGlobalVariableValue.new(secure: null,
                                 value: null)
```


