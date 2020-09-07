# DatadogAPIClient::V1::ProcessQueryDefinition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**filter_by** | **Array&lt;String&gt;** | List of processes. | [optional] 
**limit** | **Integer** | Max number of items in the filter list. | [optional] 
**metric** | **String** | Your chosen metric. | 
**search_by** | **String** | Your chosen search term. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::ProcessQueryDefinition.new(filter_by: null,
                                 limit: null,
                                 metric: null,
                                 search_by: null)
```


