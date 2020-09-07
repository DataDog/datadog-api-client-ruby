# DatadogAPIClient::V2::LogsWarning

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **String** | A unique code for this type of warning | [optional] 
**detail** | **String** | A detailed explanation of this specific warning | [optional] 
**title** | **String** | A short human-readable summary of the warning | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::LogsWarning.new(code: unknown_index,
                                 detail: indexes: foo, bar,
                                 title: One or several indexes are missing or invalid, results hold data from the other indexes)
```


