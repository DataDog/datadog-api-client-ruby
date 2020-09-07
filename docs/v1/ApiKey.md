# DatadogAPIClient::V1::ApiKey

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**created** | **String** | Date of creation of the API key. | [optional] [readonly] 
**created_by** | **String** | Datadog user handle that created the API key. | [optional] [readonly] 
**key** | **String** | API key. | [optional] [readonly] 
**name** | **String** | Name of your API key. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::ApiKey.new(created: 2019-08-02 15:31:07,
                                 created_by: john@example.com,
                                 key: 1234512345123456abcabc912349abcd,
                                 name: example user)
```


