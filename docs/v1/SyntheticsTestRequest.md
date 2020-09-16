# DatadogAPIClient::V1::SyntheticsTestRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**basic_auth** | [**SyntheticsBasicAuth**](SyntheticsBasicAuth.md) |  | [optional] 
**body** | **String** | Body to include in the test. | [optional] 
**headers** | **Hash&lt;String, String&gt;** | Headers to include when performing the test. | [optional] 
**host** | **String** | Host name to perform the test with. | [optional] 
**method** | [**HTTPMethod**](HTTPMethod.md) |  | [optional] 
**port** | **Integer** | Port to use when performing the test. | [optional] 
**query** | **Object** | Query to use for the test. | [optional] 
**timeout** | **Float** | Timeout in seconds for the test. | [optional] 
**url** | **String** | URL to perform the test with. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::SyntheticsTestRequest.new(basic_auth: null,
                                 body: null,
                                 headers: null,
                                 host: null,
                                 method: null,
                                 port: null,
                                 query: null,
                                 timeout: null,
                                 url: null)
```


