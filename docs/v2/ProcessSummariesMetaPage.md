# DatadogAPIClient::V2::ProcessSummariesMetaPage

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**after** | **String** | The cursor used to get the next results, if any. To make the next request, use the same parameters with the addition of the &#x60;page[cursor]&#x60;. | [optional] 
**size** | **Integer** | Number of results returned. | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::ProcessSummariesMetaPage.new(after: 911abf1204838d9cdfcb9a96d0b6a1bd03e1b514074f1ce1737c4cbd,
                                 size: null)
```


