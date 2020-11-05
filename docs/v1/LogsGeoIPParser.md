# DatadogAPIClient::V1::LogsGeoIPParser

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**is_enabled** | **Boolean** | Whether or not the processor is enabled. | [optional] [default to false]
**name** | **String** | Name of the processor. | [optional] 
**sources** | **Array&lt;String&gt;** | Array of source attributes. | 
**target** | **String** | Name of the parent attribute that contains all the extracted details from the &#x60;sources&#x60;. | [default to &#39;network.client.geoip&#39;]
**type** | [**LogsGeoIPParserType**](LogsGeoIPParserType.md) |  | [default to &#39;geo-ip-parser&#39;]

## Code Sample

```ruby
require 'DatadogAPIClient::V1'

instance = DatadogAPIClient::V1::LogsGeoIPParser.new(is_enabled: null,
                                 name: null,
                                 sources: [&quot;network.client.ip&quot;],
                                 target: network.client.geoip,
                                 type: null)
```


