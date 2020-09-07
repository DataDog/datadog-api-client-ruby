# DatadogAPIClient::V1::SyntheticsBrowserVariable

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**example** | **String** | Example for the variable. | [optional] 
**id** | **String** | ID for the variable. | [optional] 
**name** | **String** | Name of the variable. | 
**pattern** | **String** | Pattern of the variable. | [optional] 
**type** | [**SyntheticsBrowserVariableType**](SyntheticsBrowserVariableType.md) |  | 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::SyntheticsBrowserVariable.new(example: null,
                                 id: null,
                                 name: null,
                                 pattern: null,
                                 type: null)
```


