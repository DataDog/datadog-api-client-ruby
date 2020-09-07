# DatadogAPIClient::V2::LogsQueryFilter

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **String** | The minimum time for the requested logs, supports date math and regular timestamps | [optional] [default to &#39;now-15m&#39;]
**indexes** | **Array&lt;String&gt;** | For customers with multiple indexes, the indexes to search. Defaults to [&#39;*&#39;] which means all indexes. | [optional] 
**query** | **String** | The search query - following the log search syntax. | [optional] [default to &#39;*&#39;]
**to** | **String** | The maximum time for the requested logs, supports date math and regular timestamps | [optional] [default to &#39;now&#39;]

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::LogsQueryFilter.new(from: now-15m,
                                 indexes: [&quot;main&quot;,&quot;web&quot;],
                                 query: service:web* AND @http.status_code:[200 TO 299],
                                 to: now)
```


