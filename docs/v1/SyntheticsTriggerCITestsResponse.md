# DatadogAPIClient::V1::SyntheticsTriggerCITestsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**locations** | [**Array&lt;SyntheticsTriggerCITestsResponseLocations&gt;**](SyntheticsTriggerCITestsResponseLocations.md) | List of Synthetics locations. | [optional] 
**results** | [**Array&lt;SyntheticsTriggerCITestsResponseResults&gt;**](SyntheticsTriggerCITestsResponseResults.md) | Information about the tests runs. | [optional] 
**triggered_check_ids** | **Array&lt;String&gt;** | The public IDs of the Synthetics test triggered. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::SyntheticsTriggerCITestsResponse.new(locations: null,
                                 results: null,
                                 triggered_check_ids: null)
```


