# DatadogAPIClient::V1::SLOBulkDeleteResponseData

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**deleted** | **Array&lt;String&gt;** | An array of service level objective object IDs that indicates which objects that were completely deleted. | [optional] 
**updated** | **Array&lt;String&gt;** | An array of service level objective object IDs that indicates which objects that were modified (objects for which at least one threshold was deleted, but that were not completely deleted). | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::SLOBulkDeleteResponseData.new(deleted: null,
                                 updated: null)
```


