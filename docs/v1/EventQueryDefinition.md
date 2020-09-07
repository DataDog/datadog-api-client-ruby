# DatadogAPIClient::V1::EventQueryDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**search** | **String** | The query being made on the event. | 
**tags_execution** | **String** | The execution method for multi-value filters. Can be either and or or. | 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::EventQueryDefinition.new(search: null,
                                 tags_execution: null)
```


