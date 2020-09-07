# DatadogAPIClient::V1::SyntheticsBrowserError

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**description** | **String** | Description of the error. | 
**name** | **String** | Name of the error. | 
**status_code** | **Integer** | Status Code of the error. | [optional] 
**type** | [**SyntheticsBrowserErrorType**](SyntheticsBrowserErrorType.md) |  | 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::SyntheticsBrowserError.new(description: null,
                                 name: null,
                                 status_code: null,
                                 type: null)
```


