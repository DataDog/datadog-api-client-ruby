# DatadogAPIClient::V1::LogsListRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**index** | **String** | The log index on which the request is performed. For multi-index organizations, the default is all live indexes. Historical indexes of rehydrated logs must be specified. | [optional] 
**limit** | **Integer** | Number of logs return in the response. | [optional] 
**query** | **String** | The search query - following the log search syntax. | 
**sort** | [**LogsSort**](LogsSort.md) |  | [optional] 
**start_at** | **String** | Hash identifier of the first log to return in the list, available in a log &#x60;id&#x60; attribute. This parameter is used for the pagination feature.  **Note**: This parameter is ignored if the corresponding log is out of the scope of the specified time window. | [optional] 
**time** | [**LogsListRequestTime**](LogsListRequestTime.md) |  | 

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::LogsListRequest.new(index: retention-3,retention-15,
                                 limit: null,
                                 query: service:web* AND @http.status_code:[200 TO 299],
                                 sort: null,
                                 start_at: null,
                                 time: null)
```


