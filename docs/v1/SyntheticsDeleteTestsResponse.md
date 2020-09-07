# DatadogAPIClient::V1::SyntheticsDeleteTestsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deleted_tests** | [**Array&lt;SyntheticsDeleteTestsResponseDeletedTests&gt;**](SyntheticsDeleteTestsResponseDeletedTests.md) | Array of objects containing a deleted Synthetic test ID with the associated deletion timestamp. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::SyntheticsDeleteTestsResponse.new(deleted_tests: null)
```


