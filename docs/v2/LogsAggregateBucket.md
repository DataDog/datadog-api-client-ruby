# DatadogAPIClient::V2::LogsAggregateBucket

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**by** | **Hash&lt;String, String&gt;** | The key, value pairs for each group by | [optional] 
**computes** | [**Hash&lt;String, LogsAggregateBucketValue&gt;**](LogsAggregateBucketValue.md) | A map of the metric name -&gt; value for regular compute or list of values for a timeseries | [optional] 

## Code Sample

```ruby
require 'DatadogAPIClient::V2'

instance = DatadogAPIClient::V2::LogsAggregateBucket.new(by: {&quot;@state&quot;:&quot;success&quot;,&quot;@version&quot;:&quot;abc&quot;},
                                 computes: null)
```


